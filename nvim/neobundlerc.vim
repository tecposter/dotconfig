" ==airline==
let g:airline_theme='base16_bright'


" ==CtrlP==
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.idea$\.phpcomplete_extended$\.git$\|node_modules$\|bower_components$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$'
    \ }
let g:ctrlp_working_path_mode = 0
nmap <leader>cc :CtrlPClearAllCaches<cr>


" ==Vim ESearch==
" https://github.com/eugen0329/vim-esearch
let g:esearch = {
  \ 'adapter':    'grep',
  \ 'backend':    'nvim',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}


" ==NERDTree==
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=0
" remove some files by extension
let NERDTreeIgnore = ['\.js.map$']
" Toggle NERDTree
nmap <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <leader>y :NERDTreeFind<cr>


" ==Neomake==
" https://github.com/neomake/neomake


" vim-gitgutter
" https://github.com/airblade/vim-gitgutter
let g:gitgutter_max_signs = 500
let g:gitgutter_sign_column_always = 1


" neomake https://github.com/neomake/neomake
autocmd! BufWritePost,BufEnter * Neomake
" autocmd! BufWritePost * Neomake

let g:neomake_verbose = 3
" let g:neomake_logfile='/tmp/error.log'

let g:neomake_open_list = 0
let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

let g:neomake_javascript_eslint_maker = {
    \ 'args': ['--no-color', '--format', 'compact', '-c ~/.config/nvim/neomake/eslint/eslintrc.js'],
    \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
    \ '%W%f: line %l\, col %c\, Warning - %m'
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']

let g:neomake_php_phpcs_args_standard = 'PSR2'
let g:neomake_php_phpmd_maker = {
    \ 'args': ['%:p', 'text ~/.config/nvim/neomake/phpmd/rules.xml'],
    \ 'errorformat': '%E%f:%l%\s%m'
    \ }


" \ 'errorformat': '%f: line %l\, col %c\, %m'
"    \ 'args': ['-c', '~/.config/nvim/neomake/eslint/eslintrc.js'],
