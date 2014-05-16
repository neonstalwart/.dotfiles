" Toggle highlighting search matches
noremap <space> :set hlsearch! hlsearch?<cr>

" Use sane regular expressions and force highlighting
noremap / :set hlsearch<cr>/\v

" Magical window movement and pane splitting
map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

" Use tab to autocomplete
inoremap <Tab> <C-R>=CleverTab()<CR>
