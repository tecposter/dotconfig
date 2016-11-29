" ==airline==
let g:airline_theme='base16_bright'


" ==CtrlP==
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.idea$\.phpcomplete_extended$\.git$\|node_modules$\|bower_components$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$'
    \ }
let g:ctrlp_working_path_mode = 0
nmap <leader>C :CtrlPClearAllCaches<cr>


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
" ref. https://github.com/herrbischoff/dotfiles/blob/2f8617273bdef5795791b2821c7c2df2ef2c2dcc/home/.config/nvim/plugins.vim#L134-L164
autocmd! BufWritePost,BufEnter * Neomake
"autocmd! BufWritePre * Neomake
"autocmd! QuitPre * let g:neomake_verbose = 0
" autocmd! BufWritePost * Neomake

"let g:neomake_verbose = 3
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

"let g:neomake_javascript_eslint_maker = {
"    \ 'args': ['--no-color', '--format', 'compact', '-c ~/.config/nvim/neomake/eslint/eslintrc.js'],
"    \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
"    \ '%W%f: line %l\, col %c\, Warning - %m'
"    \ }
"let g:neomake_javascript_enabled_makers = ['eslint']

let g:neomake_php_phpcs_args_standard = 'PSR2'
"let g:neomake_php_phpmd_maker = {
"    \ 'args': ['%:p', 'text ~/.config/nvim/neomake/phpmd/rules.xml'],
"    \ 'errorformat': '%E%f:%l%\s%m'
"    \ }

noremap <silent> <leader>oo :lopen<CR>
noremap <silent> <leader>cc :lclose<CR>
noremap <silent> <leader>ll :ll<CR>
noremap <silent> <leader>nn :lnext<CR>
noremap <silent> <leader>pp :lprev<CR>

" ==https://github.com/swekaj/php-foldexpr.vim==
let b:phpfold_text_right_lines = 1
let b:phpfold_use = 1
let b:phpfold_group_iftry = 1
let b:phpfold_text_percent = 1

" https://github.com/Shougo/deoplete.nvim
" https://github.com/Shougo/deoplete.nvim/blob/master/doc/deoplete.txt
" ref https://github.com/Shougo/neocomplete.vim
" tutorials:
" https://www.gregjs.com/vim/2016/configuring-the-deoplete-asynchronous-keyword-completion-plugin-with-tern-for-vim/
" https://github.com/herrbischoff/dotfiles/blob/2f8617273bdef5795791b2821c7c2df2ef2c2dcc/home/.config/nvim/plugins.vim#L134-L164
let g:acp_enableAtStartup = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 1
"let g:phpcomplete_index_composer_command = 'composer'
"let g:deoplete#tag#cache_limit_size = 50000000
let deoplete#tag#cache_limit_size = 50000000
" https://github.com/Shougo/deoplete.nvim/issues/309
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

let g:deoplete#enable_ignore_case = 'ignorecase'
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.html = '<[^>]*'
let g:deoplete#omni_patterns.xml  = '<[^>]*'
let g:deoplete#omni_patterns.md   = '<[^>]*'
let g:deoplete#omni_patterns.css   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni_patterns.scss   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni_patterns.sass   = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni_patterns.javascript = '[^. \t]\.\%(\h\w*\)\?'
let g:deoplete#omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:deoplete#omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:deoplete#omni_patterns.go = '[^.[:digit:] *\t]\.\w*'
let g:deoplete#omni_patterns.ruby = ['[^. *\t]\.\w*', '\h\w*::']
"let g:deoplete#omni_patterns.php = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:deoplete#omni_patterns.python = ['[^. *\t]\.\h\w*\','\h\w*::']
let g:deoplete#omni_patterns.python3 = ['[^. *\t]\.\h\w*\','\h\w*::']

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

let g:deoplete#sources = {}
"let g:deoplete#sources._ = ['buffer', 'member', 'ultisnips', 'file']
let g:deoplete#sources._ = ['buffer', 'tag', 'member', 'ultisnips', 'file', 'omni']

"let g:deoplete#sources = {}
"let g:deoplete#sources._=['omni', 'buffer', 'member', 'tag', 'ultisnips', 'file']


" https://github.com/vim-scripts/UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"

" https://github.com/janko-m/vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>T :TestSuite<CR>
nmap <silent> <leader>; :TestLast<CR>
nmap <silent> <leader>gg :TestVisit<CR>
"nmap <silent> <leader>T :TestFile<CR>
"nmap <silent> <leader>a :TestSuite<CR>
"nmap <silent> <leader>l :TestLast<CR>
"nmap <silent> <leader>g :TestVisit<CR>

let test#custom_strategies = {
  \ 'nearest': 'neovim',
  \ 'file':    'dispatch',
  \ 'suite':   'basic',
  \}

" https://github.com/craigemery/vim-autotag
" http://ricostacruz.com/til/navigate-code-with-ctags
let g:autotagTagsFile=".tags"

" :tn Move to next definition (:tnext)
" :tp Move to previous definition (:tprevious)
" :ts List all definitions (:tselect)

" ^]  Jump to definition
" ^t  Jump back from definition
" ^W }    Preview definition
" g]  See all definitions
