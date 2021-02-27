""""""""""
"	 ______ _      ______
"	 | | \ | |    |___  /
"	 | |_/ / |       / /    - Rickey Zachary
"	 |    /| |      / /     - website: https://rickeyzachary.com
"	 | |\ \| |____./ /___   - twitter: zachary_rickey | github: rzachary (https://github.com/rzachary)
"	 |_| \_\_____/\_____/
"
"""""""""""

set nocompatible
filetype off

" Vim-PolyGlot Stuff
let g:polyglot_disabled = ['markdown']
let g:polyglot_disabled = ['markdown.plugin']

" ---- Plugs ------
call plug#begin('~/.config/nvim/plugins')


"========= Appearance
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ajh17/Spacegray.vim'
Plug 'chriskempson/base16-vim'

" ======== autocomplete
" I was using autocomplete but it sucks so I no longer use any


"======== Cloujure Plugins
Plug 'Olical/conjure', {'tag': 'v4.3.1'}

" Conjure support - jack-in with nrepl dependencies
Plug 'tpope/vim-dispatch'
Plug 'clojure-vim/vim-jack-in'
" Only in Neovim
Plug 'radenling/vim-dispatch-neovim'

" Structural editing for lisp languages
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

" Auto-close parens
Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }

" Completion support
Plug 'Shougo/deoplete.nvim'
Plug 'ncm2/float-preview.nvim'

" Linting with clj-kondo
Plug 'dense-analysis/ale'

" ======== HTML Plugs
Plug 'mattn/emmet-vim'

" ======== Programming
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow' " parenthesis rainbows for matching parenthesis
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic' " syntax checker

"=====
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ======== Git
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'


" ======== Tools
Plug 'vifm/vifm.vim'
Plug 'vimwiki/vimwiki'
"Plug 'dyng/ctrlsf.vim' " nice searthing but will turn it on later when

call plug#end()

"---------- Configurations and Options
set encoding=UTF-8
filetype plugin indent on
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1

"------------- ColorScheme Stuff
colorscheme gruvbox
set background=dark
let g:airline_solarized_bg='light'
let g:airline_powerline_fonts = 1

"------------- Nerd Tree Config
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

"---------- Conjure Configs
" Lint configuration - clj-kondo
" clj-kondo should be installed on operating system path
let g:ale_linters = {
      \ 'clojure': ['clj-kondo']
      \}

"---------- Startify Configs


"---------- Key Mappings

map <F1> :colorscheme gruvbox<CR>
map <F2> :colorscheme base16-default-dark<CR>
map <F3> :colorscheme hybrid_reverse<CR>
map <F4> :colorscheme PaperColor<CR>
map <F5> :colorscheme spacegray<CR>

nnoremap <C-p> :GFiles<CR>
