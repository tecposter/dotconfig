set nocompatible " not compatible with vi
set autoread " detect when a file is changed<Paste>

set backspace=indent,eol,start

set history=1000 " change history to 1000
set textwidth=120

" Tab control
set expandtab " insert space characters whenever the tab key is pressed
set tabstop=4 " insert 4 spaces for a tab
set shiftwidth=4 " number of spaces to use for indent and unindent
retab " To change all the existing tab characters to match the current tab settings,

set autoindent " automatically set indent of new line
set smartindent

set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt=longest,menuone
" set completeopt+=longest

" set clipboard=unnamed " not working in neovim # copy text from vim to other app

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros


set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

set laststatus=2

set number

" toggle invisible characters
set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪

"set mouse=i
"set clipboard=unnamed




