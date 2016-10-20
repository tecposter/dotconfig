set runtimepath+=~/.config/nvim/vendor/neobundle.vim/

call neobundle#begin(expand('~/.config/nvim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" ==My Bundles here==
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'eugen0329/vim-esearch'
NeoBundle 'neomake/neomake'
NeoBundle 'airblade/vim-gitgutter'

" --tmux--
NeoBundle 'tmux-plugins/vim-tmux-focus-events'
NeoBundle 'roxma/vim-tmux-clipboard'

NeoBundle 'kien/ctrlp.vim', {
    \ 'lazy': 1,
    \ 'autoload': {
    \   'commands': 'CtrlP',
    \   'mappings': '<c-p>',
    \ },
    \}


" ==end==

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
