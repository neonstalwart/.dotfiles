" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
	let t:curwin = winnr()
	exec "wincmd ".a:key
	if (t:curwin == winnr())
		if (match(a:key,'[jk]'))
			wincmd v
		else
			wincmd s
		endif
		exec "wincmd ".a:key
	endif
endfunction

" Remove trailing whitespace
function! StripTrailingWhite()
	let l:winview = winsaveview()
	silent! %s/\s\+$//
	call winrestview(l:winview)
endfunction

" Allow tab to autocomplete like <C-N>
function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-N>"
	endif
endfunction
