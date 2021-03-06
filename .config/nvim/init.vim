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
Plug 'junegunn/rainbow_parentheses.vim'

" ======== autocomplete
" Trying out the native neovim lsp plugins
" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

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
"Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }

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
" -- Go Lang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" -- C\C++

" -- Python

" -- Haskell

" -- Java

" -- EMCAScript

"===== FZF Goodness
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'stsewd/fzf-checkout.vim'

" ======== Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" ======== Tools
Plug 'vifm/vifm.vim'
Plug 'vimwiki/vimwiki'
"Plug 'dyng/ctrlsf.vim' " nice searthing but will turn it on later when
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-markdown'
Plug 'vim-utils/vim-man'
Plug 'junegunn/goyo.vim'

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
set splitbelow
set splitright

" ------ Leader Key Remap
let mapleader = " "


"------------- ColorScheme Stuff
colorscheme gruvbox
set background=dark
let g:airline_solarized_bg='light'
let g:airline_powerline_fonts = 1

"------------- Nerd Tree Config
" Uncomment to autostart the NERDTree
autocmd vimenter * NERDTree | wincmd p
" map <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"---------- Conjure Configs
" Lint configuration - clj-kondo
" clj-kondo should be installed on operating system path
let g:ale_linters = {
      \ 'clojure': ['clj-kondo']
      \}

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

"---------- Key Mappings
nmap <leader>r :so ~/.config/nvim/init.vim<CR>

map <F1> :colorscheme gruvbox<CR>
map <F2> :colorscheme base16-default-dark<CR>
map <F3> :colorscheme hybrid_reverse<CR>
map <F4> :colorscheme PaperColor<CR>
map <F5> :colorscheme spacegray<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :lua vim.lsp.diagnostic.set_loclist()<CR>

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>vrc :lua require('rzachary.telescope').search_dotfiles()<CR>
nnoremap <leader>gc :lua require('rzacharyrtelescope').git_branches()<CR>

nnoremap <leader>dd :Goyo

"---------- Startify Configs
let g:ascii = [
      \'                           ______                         ',
      \'                     _.-*""      "`*-._                   ',
      \'                _.-*"                  `*-._              ',
      \'             .-"                            `-.           ',
      \'  /`-.    .-"                  _.              `-.        ',
      \' :    `.."                  .-`_ .                `.      ',
      \' |    ."                 .-`_.` \ .                 \     ',
      \' |   /                 .` .*     ;               .-`"     ',
      \' :   L                    `.     | ;          .-`         ',
      \'  \.` `*.          .-*"*-.  `.   ; |        .`            ',
      \'  /      \        `       `.  `-`  ;      .`              ',
      \' : .""`.  .       .-*"`*-.  \     .      (_               ',
      \' |              .`        \  .             `*-.           ',
      \' |.     .      /           ;                   `-.        ',
      \' :    db      "       d$b  |                      `-.     ',
      \' .   :PT;.   "       :P"T; :                         `.   ',
      \' :   :bd;   "        :b_d; :                           \  ',
      \' |   :$$; `"         :$$$; |                            \ ',
      \' |    TP              T$P  "                             ;',
      \' :                        /.-*""`.                       |',
      \'.sdP^T$bs.               /"       \                       ',
      \'$$$._.$$$$b.--._      _.`   .--.   ;                      ',
      \'`*$$$$$$P*"     `*--*`     `  / \  :                      ',
      \'   \                        .`   ; ;                      ',
      \'    `.                  _.-"    " /                       ',
      \'      `*-.                      .`                        ',
      \'          `*-._            _.-*`                          ',
      \'               `*=--..--=*`                               ',
      \'                                                          ',
      \ ]
let g:startify_custom_header =
      \ startify#center(g:ascii + startify#fortune#boxed())
