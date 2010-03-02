if !exists('loaded_snippet') || &cp
    finish
endif

function! UpFirst()
    return substitute(@z,'.','\u&','')
endfunction

function! JavaTestFileName(type)
    let filepath = expand('%:p')
    let filepath = substitute(filepath, '/','.','g')
    let filepath = substitute(filepath, '^.\(:\\\)\?','','')
    let filepath = substitute(filepath, '\','.','g')
    let filepath = substitute(filepath, ' ','','g')
    let filepath = substitute(filepath, '.*test.','','')
    if a:type == 1
        let filepath = substitute(filepath, '.[A-Za-z]*.java','','g')
    elseif a:type == 2
        let filepath = substitute(filepath, 'Tests.java','','')
    elseif a:type == 3
        let filepath = substitute(filepath, '.*\.\([A-Za-z]*\).java','\1','g')
    elseif a:type == 4
        let filepath = substitute(filepath, 'Tests.java','','')
        let filepath = substitute(filepath, '.*\.\([A-Za-z]*\).java','\1','g')
    elseif a:type == 5
        let filepath = substitute(filepath, 'Tests.java','','')
        let filepath = substitute(filepath, '.*\.\([A-Za-z]*\).java','\1','g')
        let filepath = substitute(filepath, '.','\l&','')
    endif

    return filepath
endfunction

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet license /**<CR>".st."\"SNIP_FILE_NAME\"".et." ".st.et."<CR>Copyright (C) ".st."\"2009 Lech Twaróg <lech.twarog@gmail.com>\"".et."<CR><CR>This program is free software: you can redistribute it and/or modify<CR>it under the terms of the GNU General Public License as published by<CR>the Free Software Foundation, either version 3 of the License, or<CR>(at your option) any later version.<CR><CR>This program is distributed in the hope that it will be useful,<CR>but WITHOUT ANY WARRANTY; without even the implied warranty of<CR>MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the<CR>GNU General Public License for more details.<CR><CR>You should have received a copy of the GNU General Public License<CR>along with this program.  If not, see <http://www.gnu.org/licenses/>.<CR>/<CR><CR>"st.et

exec "Snippet isql import java.sql.".st."\"*\"".et.";<CR>".st.et
exec "Snippet iutil import java.util.".st."\"*\"".et.";<CR>".st.et
exec "Snippet iapache import org.apache.".st."\"*\"".et.";<CR>".st.et
exec "Snippet ilogger import org.apache.log4j.Logger;<CR>".st.et
exec "Snippet pack package ".st."j:JavaTestFileName(1)".et."<CR>"
exec "Snippet cl /**<CR>".st.et."<CR>@author ".st."\"Lech Twarog lech.twarog@gmail.com\"".et."<CR>/<CR>".st."public".et." class ".st.et."{<CR>".st.et."<CR>}<CR>"
exec "Snippet method /**<CR>".st.et."<CR>/<CR>public ".st."return".et." ".st."method".et."() {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet jps private static final ".st."string".et." ".st.et." = \"".st.et."\";<CR>".st.et
exec "Snippet jtc try {<CR>".st.et."<CR>} catch (".st.et." e) {<CR>".st.et."<CR>} finally {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet jlog private final Logger logger = Logger.getLogger(".st.et.".class);<CR>".st.et
exec "Snippet jpv private ".st."string".et." ".st.et.";<CR>".st.et
exec "Snippet bean /**<CR>Setter for ".st."fieldName".et.".<CR>@param ".st."fieldName".et." new value for ".st."fieldName".et."<CR>/<CR>public void set".st."fieldName:UpFirst()".et."(".st."String".et." ".st."fieldName".et.") {<CR>this.".st."fieldName".et." = ".st."fieldName".et.";<CR>}<CR><CR>/**<CR>Getter for ".st."fieldName".et.".<CR>@return ".st."fieldName".et."<CR>/<CR>public ".st."String".et." get".st."fieldName:UpFirst()".et."() {<CR>return ".st."fieldName".et.";<CR>}<CR><CR>".st.et
exec "Snippet jwh while(".st.et."){<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet sout System.out.println(\"".st.et."\");".st.et
exec "Snippet jtest package ".st."j:JavaTestFileName(1)".et."<CR><CR>import junit.framework.TestCase;<CR>import ".st."j:JavaTestFileName(2)".et.";<CR><CR>/**<CR> * ".st."j:JavaTestFileName(3)".et."<CR> *<CR> * @author ".st.et."<CR> * @since ".st.et."<CR> */<CR>public class ".st."j:JavaTestFileName(3)".et." extends TestCase {<CR><CR>private ".st."j:JavaTestFileName(4)".et." ".st."j:JavaTestFileName(5)".et.";<CR><CR>public ".st."j:JavaTestFileName(4)".et." get".st."j:JavaTestFileName(4)".et."() { return this.".st."j:JavaTestFileName(5)".et."; }<CR>public void set".st."j:JavaTestFileName(4)".et."(".st."j:JavaTestFileName(4)".et." ".st."j:JavaTestFileName(5)".et.") { this.".st."j:JavaTestFileName(5)".et." = ".st."j:JavaTestFileName(5)".et."; }<CR><CR>public void test".st.et."() {<CR>".st.et."<CR>}<CR>}<CR>".st.et
exec "Snippet jif if(".st.et."){<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet jelse if(".st.et."){".st.et."<CR>".st.et."<CR>}else{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet jpm /**<CR> * ".st.et."<CR> *<CR> * @param ".st.et." ".st.et."<CR> * ".st.et." ".st.et."<CR> */<CR>private ".st."void".et." ".st.et."(".st."String".et." ".st.et.") {<CR><CR>".st.et."<CR><CR>}<CR>".st.et
exec "Snippet main public static void main(String[] args) {<CR>".st."\"System.exit(0)\"".et.";<CR>}<CR>".st.et
exec "Snippet jpum /**<CR> * ".st.et."<CR> *<CR> * @param ".st.et." ".st.et."<CR> *".st.et." ".st.et."<CR> */<CR>public ".st."void".et." ".st.et."(".st."String".et." ".st.et.") {<CR><CR>".st.et."<CR><CR>}<CR>".st.et
exec "Snippet jcout <c:out value=\"${".st.et."}\" />".st.et
