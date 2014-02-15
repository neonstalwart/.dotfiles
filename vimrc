" credit to James Morrin (@treasonx) https://github.com/treasonx/environment

"""""""""""""""""""""""""""""""""""""""""""""""
"  __   __ __   __    __   ______   ______    "
" /\ \ / //\ \ /\ "-./  \ /\  == \ /\  ___\   "
" \ \ \'/ \ \ \\ \ \-./\ \\ \  __< \ \ \____  "
"  \ \__|  \ \_\\ \_\ \ \_\\ \_\ \_\\ \_____\ " 
"   \/_/    \/_/ \/_/  \/_/ \/_/ /_/ \/_____/ " 
"                                             "
"               James Morrin                  "
"                @treasonx                    " 
"                                             "  
"""""""""""""""""""""""""""""""""""""""""""""""
let s:vim_home = '~/.vim/'

let config_list = [ 
	\ 'base.vim',
	\ 'plugins.vim', 
	\ 'functions.vim', 
	\ 'theme.vim', 
	\ 'settings.vim', 
	\ 'leader.vim',  
	\ 'keymappings.vim',  
	\ 'plugin_settings/*.vim'
\]

for files in config_list 
	for f in split(glob(s:vim_home.files), '\n')
		exec 'source '.f
	endfor
endfor

