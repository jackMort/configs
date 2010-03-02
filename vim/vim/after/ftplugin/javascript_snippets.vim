if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet proto ".st."className".et.".prototype.".st."methodName".et." = function(".st.et.")<CR>{<CR>".st.et."<CR>};<CR>".st.et
exec "Snippet fun function ".st."functionName".et." (".st.et.")<CR>{<CR><Tab>".st.et."<CR><BS>}<CR>".st.et
exec "Snippet license /**<CR>".st."\"SNIP_FILE_NAME\"".et." ".st.et."<CR>Copyright (C) ".st."\"2009 Lech Twaróg <lech.twarog@gmail.com>\"".et."<CR><CR>This program is free software: you can redistribute it and/or modify<CR>it under the terms of the GNU General Public License as published by<CR>the Free Software Foundation, either version 3 of the License, or<CR>(at your option) any later version.<CR><CR>This program is distributed in the hope that it will be useful,<CR>but WITHOUT ANY WARRANTY; without even the implied warranty of<CR>MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the<CR>GNU General Public License for more details.<CR><CR>You should have received a copy of the GNU General Public License<CR>along with this program.  If not, see <http://www.gnu.org/licenses/>.<CR>/<CR><CR>"st.et
exec "Snippet extend ".st."className".et." = Ext.extend( ".st."extendedClassName".et.", {//{{{<CR>initComponent: function() {<CR>".st."className".et.".superclass.initComponent.apply( this, arguments );<CR>}<CR>});//}}}<CR>"

exec "Snippet seihomodule /**<CR>".st."\"SNIP_FILE_NAME\"".et." ".st.et."<CR>Copyright (C) ".st."\"2009 Lech Twaróg <lech.twarog@gmail.com>\"".et."<CR><CR>This program is free software: you can redistribute it and/or modify<CR>it under the terms of the GNU General Public License as published by<CR>the Free Software Foundation, either version 3 of the License, or<CR>(at your option) any later version.<CR><CR>This program is distributed in the hope that it will be useful,<CR>but WITHOUT ANY WARRANTY; without even the implied warranty of<CR>MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the<CR>GNU General Public License for more details.<CR><CR>You should have received a copy of the GNU General Public License<CR>along with this program.  If not, see <http://www.gnu.org/licenses/>.<CR>/<CR><CR>Ext.namespace('".st."moduleClass".et."');<CR><CR>".st."moduleClass".et." = Ext.extend( Seihosoft.module.prototype, {<CR>title: '".st."title".et."',<CR>moduleName: '".st."title".et."',<CR>start: function() {<CR>this.setContent( null );<CR>}<CR>});<CR><CR>Ext.reg('".st."regName".et."', ".st."moduleClass".et.");<CR>// vim: fdm=marker ts=4 sw=4 sts=4"
