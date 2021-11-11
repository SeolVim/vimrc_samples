" https://github.com/vim/vim/blob/master/runtime/defaults.vim

if v:progname =~? "evim"
  finish
endif

if exists('skip_defaults_vim')
  finish
endif

if &compatible
  set nocompatible
endif

silent! while 0
  set nocompatible
silent! endwhile

set backspace=indent,eol,start

set history=200
set ruler
set showcmd
set wildmenu

set ttimeout
set ttimeoutlen=100

set display=truncate

set scrolloff=5

if has('reltime')
  set incsearch
endif

set nrformats-=octal

if has('win32')
  set guioptions-=t
endif

map Q gq

inoremap <C-U> <C-G>u<C-U>

if has('mouse')
  if &term =~ 'xterm'
    set mouse=a
  else
    set mouse=nvi
  endif
endif

if 1
  filetype plugin indent on

  augroup vimStartup
    au!

    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif

  augroup END
endif

if &t_Co > 2 || has("gui_running")
  syntax on

  let c_comment_strings=1
endif

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langremap')
  set nolangremap
endif
