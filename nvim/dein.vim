if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/nvim/bundle')
    call dein#begin('~/.config/nvim/bundle')

    " Let dein manage dein
    " Required:
    call dein#add('~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:
    source ~/.config/nvim/dein.bundle.vim

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
