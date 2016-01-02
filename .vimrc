" Visual
set number
syntax on
set background=dark
colorscheme gruvbox
set cursorline                    " Highlight line number

" Search
set hlsearch    " Highlight matches
set incsearch   " Incremental searching
set ignorecase  " Searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Tabs and white spaces
set nowrap                        " Don't wrap lines
set tabstop=2                     " Tabs are always 2 spaces
set expandtab                     " Expand tabs into spaces
set shiftwidth=2                  " Reindent with 2 spaces (using <<)
set list                          " Show invisible chars
set listchars=""                  " Reset listchars
set list listchars=tab:»·,trail:· " Set listchars for tabs and trailing spaces
set smartindent                   " indents correctly (most of the time)
"
" Behavioral
set backspace=indent,eol,start " Backspace work normal
set clipboard=unnamed          " Share clipboard
set directory=/tmp             " Set swap directly to not clutter workspace files
set autoread                   " Auto-reload buffers when file changed on disk
set noswapfile                 " Don't use swap files (.swp)

" Vundle config
set nocompatible               " be iMproved, required
filetype off                   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-sleuth'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'

" Javascript
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

"Ruby
Plugin 'tpope/vim-endwise'
Plugin 'slim-template/vim-slim'

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
let NERDTreeShowHidden=1 "Show hidden files by default

" sets leader to be comma
let mapleader=","

" insert pry
map <leader>ip orequire 'pry';binding.pry<CR><Esc>

" Syntastic
let g:syntastic_ruby_checkers=['mri', 'rubocop']
set statusline+=%#warningmsg#
let g:syntastic_quiet_messages={} " Show warnings for Rubocop

" CtrlP
" Ignore following directories in fuzzy search
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
