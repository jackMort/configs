#!/bin/bash
while true
do
	echo 0 widget_tell mystatusbar clock text "   `date '+%Y-%m-%d %H:%M:%S'`  " | awesome-client
	echo 0 widget_tell mystatusbar uptime text "`uptime | sed 's/.*://; s/,//g'`" | awesome-client
	echo 0 widget_tell mystatusbar diskusage data home "`df | awk '/\/dev\/sda6/ {print $5}'`" | awesome-client
	echo 0 widget_tell mystatusbar diskusage data root "`df | awk '/\/dev\/root/ {print $5}'`" | awesome-client
	echo 0 widget_tell mystatusbar temp text " `sensors | grep temp1 | awk '{print $2}'`" | awesome-client
	sleep 1
done
