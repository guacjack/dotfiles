" Visual
set number
syntax on
colorscheme gruvbox 
set hlsearch                   " Highlight search results

" Behavioral
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start "Backspace work normal
set clipboard=unnamed          "Share clipboard

" Vundle config
set nocompatible               " be iMproved, required
filetype off                   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'slim-template/vim-slim'
Plugin 'mattn/emmet-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Airline config
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" NERDTREE config
" Auto open when Vim opens
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Map CTRL+E to open NERDTREE
map <C-e> :NERDTreeToggle<CR>

" sets leader to be comma
let mapleader=","

" insert pry
map <leader>ip orequire 'pry';binding.pry<CR><Esc>
