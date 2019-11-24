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
	" Linter
  Plug 'w0rp/ale'
  " Bind vim controls to tmux
  Plug 'christoomey/vim-tmux-navigator'
  " Git wrapper
  Plug 'tpope/vim-fugitive'

call plug#end()

" JSDocs syntax
let g:javascript_plugin_jsdoc = 1

" Set Relativenumber
:set relativenumber

" Turing on color scheme
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

" COC Settings
" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
