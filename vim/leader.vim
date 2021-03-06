" Use comma as the mapleader
let mapleader = ','
let g:mapleader = ','

" Map the default leader to what comma does
nnoremap \ ,

" search/replace the word under the cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<cr>

" NERDTree show in sidebar
nnoremap <leader>f :NERDTreeFind<cr>

" CtrlP
nnoremap <leader>t :CtrlP<cr>

" Simplify searching across multiple files
noremap <leader>/ :Ag!<space>

" Faster save
nnoremap <leader><leader> :update<cr>

" Graph of undo tree
nnoremap <leader>u :GundoToggle<CR>
