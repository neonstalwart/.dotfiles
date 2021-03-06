let g:lightline = {
	\ 'colorscheme': 'solarized',
	\ 'active': {
	\	'left': [
	\		[ 'mode', 'paste' ],
	\		[ 'fugitive', 'filename' ],
	\		[ 'ctrlpmark' ]
	\	]
	\ },
	\ 'component_function': {
	\	'fugitive': 'MyFugitive',
	\	'filename': 'MyFilename',
	\	'fileformat': 'MyFileformat',
	\	'filetype': 'MyFiletype',
	\	'fileencoding': 'MyFileencoding',
	\	'mode': 'MyMode',
	\	'ctrlpmark': 'CtrlPMark',
	\ },
	\ 'component': {
	\	'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
	\ },
	\ 'component_visible_condition': {
	\	'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
	\ }
\ }

function! MyModified()
	return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
	return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! MyFilename()
	let fname = expand('%:t')
	return fname == 'ControlP' ? g:lightline.ctrlp_item :
		\ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
		\ ('' != fname ? fname : '[No Name]') .
		\ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
	try
		if expand('%:t') !~? 'NERD' && exists('*fugitive#head')
			let mark = '!'
			let _ = fugitive#head()
			return strlen(_) ? _.mark : ''
		endif
	catch
	endtry
	return ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
	return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
	let fname = expand('%:t')
	return fname == 'ControlP' ? 'CtrlP' :
		\ fname =~ 'NERD_tree' ? 'NERDTree' :
		\ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
	if expand('%:t') =~ 'ControlP'
		call lightline#link('iR'[g:lightline.ctrlp_regex])
		return lightline#concatenate(
		\	[g:lightline.ctrlp_prev, g:lightline.ctrlp_item, g:lightline.ctrlp_next],
		\	0
		\ )
	else
		return ''
	endif
endfunction

let g:ctrlp_status_func = {
	\	'main': 'CtrlPStatusFunc_1',
	\	'prog': 'CtrlPStatusFunc_2',
\ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
	let g:lightline.ctrlp_regex = a:regex
	let g:lightline.ctrlp_prev = a:prev
	let g:lightline.ctrlp_item = a:item
	let g:lightline.ctrlp_next = a:next
	return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
	return lightline#statusline(0)
endfunction

" automatically update the colorscheme when it changes
augroup LightLineColorscheme
	autocmd!
	autocmd ColorScheme * call s:lightline_update()
augroup END
function! s:lightline_update()
	if !exists('g:loaded_lightline')
		return
	endif
	try
		if g:colors_name =~# 'wombat\|solarized\|landscape\|jellybeans\|Tomorrow'
			let g:lightline.colorscheme =
				\ substitute(substitute(g:colors_name, '-', '_', 'g'), '256.*', '', '') .
				\ (g:colors_name ==# 'solarized' ? '_' . &background : '')
			call lightline#init()
			call lightline#colorscheme()
			call lightline#update()
		endif
	catch
	endtry
endfunction
