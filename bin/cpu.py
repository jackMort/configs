#!/usr/bin/python

from __future__ import with_statement, division

import os
import sys
import signal
import atexit
import itertools
from time import sleep
from subprocess import Popen, PIPE
from datetime import time, date, datetime

CPU_COUNT = 2

CLOCK_FORMAT = '0 widget_tell topbar clock text %s\n\n'
COUNTDOWN_FORMAT = '0 widget_tell topbar countdown text %s until %s\n\n'
CPU_FORMAT = '0 widget_tell mystatusbar cpu data cpu%d %d\n'
DISK_FORMAT = '0 widget_tell topbar disk%s data %s %d\n'
DISK_WARNING_FORMAT = '0 widget_tell topbar disk%swarning text %s\n'

is_weekday = lambda d,t: (d.weekday() < 6)
is_tuesday = lambda d,t: (d.weekday() == 1)
is_wednesday = lambda d,t: (d.weekday() == 2)
is_thursday = lambda d,t: (d.weekday() == 3)
is_weekday_not_wed = lambda d,t: (is_weekday(d,t) and not is_wednesday(d,t))
is_sunday = lambda d,t: (d.weekday() == 6)

events = [
    # No class until 3rd period this quarter!
    #(time( 8,  5), 'start of 1st period', is_weekday),
    #(time( 8, 55), 'end of 1st period', is_weekday),
    #(time( 9,  0), 'start of 2nd period', is_weekday),
    #(time( 9, 50), 'end of 2nd period', is_weekday),
    (time( 9, 55), 'start of 3rd period', is_weekday_not_wed),
    (time(10, 45), 'end of 3rd period', is_weekday_not_wed),
    (time(10, 50), 'start of 4th period', is_weekday_not_wed),
    (time(11, 40), 'end of 4th period', is_weekday_not_wed),
    (time(11, 45), 'start of 5th period', is_weekday_not_wed),
    (time(12, 35), 'end of 5th period', is_weekday_not_wed),
    (time(12, 40), 'start of 6th period', is_weekday_not_wed),
    (time(13, 30), 'end of 6th period', is_weekday_not_wed),
    (time(13, 35), 'start of 7th period', is_weekday_not_wed),
    (time(14, 25), 'end of 7th period', is_weekday_not_wed),
    (time(14, 30), 'start of 8th period', is_weekday_not_wed),
    (time(15, 00), 'start of RT all-team meeting', is_sunday),
    (time(15, 20), 'end of 8th period', is_weekday_not_wed),
    #(time(16, 25), 'start of 9th period', is_weekday_not_wed),
    #(time(17, 15), 'end of 9th period', is_weekday_not_wed),
    #(time(17, 20), 'start of 10th period', is_weekday_not_wed),
    #(time(18, 10), 'end of 10th period', is_weekday_not_wed),
    (time(17, 15), 'start of LUG meeting', is_thursday),
    (time(17, 30), 'start of Thorn meeting', is_wednesday),
    (time(19, 30), 'start of RT administrative meeting', is_tuesday),
    (time(21, 00), 'start of RT software meeting', is_wednesday),
    (time(23, 59, 59), 'midnight', lambda d,t: True)
]
events.sort()

def format_datetime(dt):
    'Format a datetime to a nice, pretty string.'
    return dt.strftime('%A %d %B %Y %l:%M:%S %p'
                ).replace('AM', 'a.m.').replace('PM', 'p.m.')

def pluralize(s, v):
    return s % (v, 's' if v != 1 else '')

def interval(time1, time2):
    'Convert a duration to humanized text.'
    dt1 = datetime.combine(date.today(), time1)
    dt2 = datetime.combine(date.today(), time2)
    seconds = (dt2 - dt1).seconds
    s = []
    if seconds > (60 * 60):
        s.append('%dh' % (seconds // (60 * 60),))
        seconds %= (60 * 60)
    if seconds > 60:
        s.append('%dm' % (seconds // 60,))
        seconds %= 60
    if not s:
        s.append('%ds' % seconds)
    return ', '.join(s)


def update(s):
    client.stdin.write(s)


def clock_update():
    now = datetime.now()
    update(CLOCK_FORMAT % format_datetime(now))
    for time, event, test in events:
        if time > now.time() and test(now.date(), now.time()):
            break
    update(COUNTDOWN_FORMAT % (interval(now.time(), time), event))


def cpu_update():
    with open('/proc/stat') as stat:
        stat.readline() # overall usage; we don't care
        for i in range(CPU_COUNT):
            perc = cpu_line_calc(i, stat.readline())
            update(CPU_FORMAT % (i, perc))


_old_lines = [(0, 0, 0)] * CPU_COUNT
def cpu_line_calc(i, line):
    user, nice, system, idle = map(int, line.strip().split()[1:5])
    total = user + nice + system + idle
    old_system, old_user, old_total = _old_lines[i]
    _old_lines[i] = (system, user, total)
    return (100 * (system - old_system + user - old_user) / (total - old_total))

DISKS = [
    ('root', '/'),
    ('home', '/home'),
]

def disk_update(name, mount_point):
    df = Popen(['df', mount_point, '-h'], stdout=PIPE)
    df.stdout.readline() # headers; don't care
    avail, use = df.stdout.readline().split()[3:5]
    df.stdout.close()
    use = int(use[:-1])
    update(DISK_FORMAT % (name, name, use))
    if use >= 99:
        update(DISK_WARNING_FORMAT % (name, ' ONLY %s LEFT!!!' % avail))
    else:
        update(DISK_WARNING_FORMAT % (name, ''))


if __name__ == '__main__':
    pid_file = '/tmp/awesome-clock-%s.pid' % os.getuid()
    # Kill any running awesome-clock.py
    try:
        pid = int(open(pid_file, 'r').read())
        os.kill(pid, signal.SIGINT)
    except (IOError, OSError, ValueError):
        pass
    with open(pid_file, 'w') as f:
        f.write(str(os.getpid()))
    atexit.register(lambda: os.unlink(pid_file))
    
    client = Popen(['awesome-client'], stdin=PIPE, bufsize=1)
    cpu_skip = itertools.cycle(range(4)).next
    disk_skip = itertools.cycle(range(40)).next
    while True:
 #       clock_update()
        if not cpu_skip():
            cpu_update()
  #      if not disk_skip():
  #         for name, mount_point in DISKS:
  #             disk_update(name, mount_point)
        client.stdin.write('\n')
        client.stdin.flush()
        sleep(.25)


