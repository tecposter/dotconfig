if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/i/.dotconfig/nvim/./bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/i/.dotconfig/nvim/./bundle')
    call dein#begin('/home/i/.dotconfig/nvim/./bundle')

    " Let dein manage dein
    " Required:
    call dein#add('/home/i/.dotconfig/nvim/./bundle/repos/github.com/Shougo/dein.vim')

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
