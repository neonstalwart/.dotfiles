"Reload ~/.vimrc when it's edited
autocmd! bufwritepost .vimrc,*.vim source ~/.vimrc

"Enable plugins and indenting per filetype
filetype indent plugin on

"Syntax highlighting
syntax on

"Indent new line based on previous
set autoindent

"Reload files changed outside of vim
set autoread

"
set background=dark

"Yank to system clipboard
set clipboard=unnamed

set cmdheight=2

"Use existing indentation on new lines
set copyindent

"Highlight current line
set cursorline

"Per-directory .vimrc
set exrc

"Highlight all search matches
set hlsearch

"Remember lots of commands
set history=700

"Show incremental matches when searching
set incsearch

"Show hidden characters
set list 
set listchars=tab:▸-,trail:~,eol:¶,precedes:<,extends:>

"Don't wrap long lines
set nowrap

"Show line numbers
set number

"Show cursor coordinates
set ruler

"Start scrolling before the cursor reaches edge of viewport
set scrolloff=6

"Prevent local .vimrc files being unsafe
set secure

"Ignore case when pattern is only lowercase letters
set smartcase

"Tabs are 4 chars
set tabstop=4

"Better completion
set wildmenu
