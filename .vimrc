call plug#begin()
" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	" JS syntax highlighting
	Plug 'sheerun/vim-polyglot'
	" ESlint 
	Plug 'dense-analysis/ale'
	" Fuzzy Finder 
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	" Intelli
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" JSDocs syntax
let g:javascript_plugin_jsdoc = 1
