call plug#begin()
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	" JS syntax highlighting
	Plug 'sheerun/vim-polyglot'
	" Fuzzy Finder 
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	" Intelli
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" ColorSchema
	Plug 'jdsimcoe/abstract.vim'
	" Typescript Syntax 
	Plug 'leafgarland/typescript-vim'
  Plug 'ianks/vim-tsx'
	" Liner
	 Plug 'w0rp/ale'

call plug#end()

" JSDocs syntax
let g:javascript_plugin_jsdoc = 1

" Turing on color scheme
set t_Co=256
syntax on
colorscheme abstract 

" Settings for Ale Linter
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" Indentation
set breakindent                                      "Mantain indent on wrapping lines
set autoindent                                       "autoindent
set tabstop=2 shiftwidth=2 expandtab softtabstop=2   "tabs = 2 spaces

" No backup files
set nowritebackup
set noswapfile
set nobackup
