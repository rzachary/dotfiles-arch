""""""""""
"	 ______ _      ______
"	 | | \ | |    |___  /
"	 | |_/ / |       / /    - Rickey Zachary
"	 |    /| |      / /     - website: https://rickeyzachary.com
"	 | |\ \| |____./ /___   - twitter: zachary_rickey | github: rzachary (https://github.com/rzachary)
"	 |_| \_\_____/\_____/
"
""""""""""

""""" === VIMRC File for Arch Linux ====
let skip_defaults_vim=1
set nocompatible

"""""" Settings for VIM
set encoding=utf-8
set t_Co=256

set autoindent

set ruler
set showmode

" set spacing and tabs
autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" use hybrid line numbers
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

set fileformat=unix

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

""""" Vundle Plugins and Configurations

call vundle#begin()

"========= Appearance
Plugin 'morhetz/gruvbox'
Plugin 'lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/cim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'

" ======== autocomplete
" I was using autocomplete but it sucks so I no longer use any

" ======== HTML Plugins
Plugin 'mattn/emmet-vim'


" ======== Programming 
Plugin 'sheerun/vim-polyglot'
Plugin 'luochen1990/rainbow' " parenthesis rainbows for matching parenthesis
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic' " syntax checker

" ======== Git
Plugin 'airblade/vim-gitgutter'
Plugin 'jreybert/vimagit'
Plugin 'tpope/vim-fugitive'


" ======== Tools
Plugin 'vifm/vifm.vim'
Plugin 'vimwiki/vimwiki'
"Plugin 'dyng/ctrlsf.vim' " nice searthing but will turn it on later when

call vundle#end()

"""""""""""""""

filetype plugin indent on "required for plugins

""""""""""""""""""""""""""""""""""
"GruvBox Startup and Config
let g:gruvbox_contrast_dark='default'
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

"""""""""""""""""""""""""""""""""""
"Powerline Config
let g:Powerline_symbols = 'fancy'


