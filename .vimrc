" Visual
set number
syntax on
colorscheme gruvbox 
set hlsearch                   " Highlight search results
set background=dark
set cursorline                 " Highlight line number

" Behavioral
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start " Backspace work normal
set clipboard=unnamed          " Share clipboard
set directory=/tmp             " Set swap directly to not clutter workspace files

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
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Airline config
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t' "Show just filename in buffer

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

" Syntastic
let g:syntastic_ruby_checkers=['mri', 'rubocop']
set statusline+=%#warningmsg#
let g:syntastic_quiet_messages={} " Show warnings for Rubocop
