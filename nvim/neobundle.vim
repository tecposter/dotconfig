set runtimepath+=~/.config/vendor/neobundle.vim/

call neobundle#begin(expand('~/.config/nvim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" ==My Bundles here==
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'eugen0329/vim-esearch'
NeoBundle 'neomake/neomake'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'tecposter/php-foldexpr.vim', {
    \   'on_ft': ['php'],
    \}
" NeoBundle 'vim-scripts/phpfolding.vim'

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

NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'vim-scripts/UltiSnips'
NeoBundle 'janko-m/vim-test'

NeoBundle 'Shougo/denite.nvim'
NeoBundle 'craigemery/vim-autotag'

NeoBundle 'tpope/vim-dispatch'

"NeoBundle 'm2mdas/phpcomplete-extended'
"NeoBundle 'shawncplus/phpcomplete.vim'
"
"NeoBundle 'Shougo/vimproc', {
"      \ 'build' : {
"      \     'windows' : 'make -f make_mingw32.mak',
"      \     'cygwin' : 'make -f make_cygwin.mak',
"      \     'mac' : 'make -f make_mac.mak',
"      \     'unix' : 'make -f make_unix.mak',
"      \    },
"     \ }


" ==end==

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
