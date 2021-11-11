" EatChangmyeong's personal .vimrc

set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'

call vundle#end()
filetype plugin indent on

if has('persistent_undo')
  set undofile
endif

syntax on

set mouse+=a

set number
set relativenumber

set laststatus=2

set ignorecase
set smartcase

set incsearch

set backspace=indent,eol,start

nmap Q <Nop>

filetype indent off
set noautoindent
set nocindent
set nosmartindent

set belloff=cursor,error

autocmd vimenter * NERDTree
