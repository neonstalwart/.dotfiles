"Reload ~/.vimrc when it's edited
autocmd! bufwritepost vimrc,*.vim source ~/.vimrc

"Enable plugins and indenting per filetype
filetype indent plugin on

"Indent new line based on previous
set autoindent

"Reload files changed outside of vim
set autoread

" No backups needed
set nobackup

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

"Ignore case when searching
set ignorecase

"Show incremental matches when searching
set incsearch

"Show hidden characters
set list
set listchars=tab:╶─,trail:~,precedes:«,extends:»

"Show matching bracket in 300ms
set matchtime=3

"Ignore modelines
set nomodeline

"Show line numbers
set number

"Show cursor coordinates
set ruler

"Start scrolling before the cursor reaches edge of viewport
set scrolloff=6

"Prevent local .vimrc files being unsafe
set secure

"Shift to multiple of shiftwidth
set shiftround

"Number of spaces for each indent
set shiftwidth=4

" Show commands as they are entered
set showcmd

"Show matching brackets
set showmatch

" Show mode
set showmode

"Respect case when search patterns contains upper case characters
set smartcase

"Smart autoindenting
set smartindent

"<Tab> inserts blanks according to shiftwidth
set smarttab

"Put new window below
set splitbelow

"Put new window to right
set splitright

" no need for a swap file
set noswapfile

"Tabs are 4 chars
set tabstop=4

"Better completion
set wildmenu

"Don't wrap long lines
set nowrap
