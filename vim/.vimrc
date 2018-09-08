""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" <---- add plugins here

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

"Enable 256 colors pallete in gnome-terminal"
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif


set background=dark

try
    colorscheme monokai
catch
endtry


""""""""""""""""""""""""""""""""""""
" Editor
""""""""""""""""""""""""""""""""""""

" Use Unix as the standard file type
set encoding=utf8
set ffs=unix,dos,mac

" Expand tabs into spaces and be smart about it
set expandtab
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Indentation
set ai " Auto-indent
set si " Smart-indent
set wrap " Wrap-lines

" Permission denied on save fix
" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

""""""""""""""""""""""""""""""""""""
" Tabs, windows and buffers
""""""""""""""""""""""""""""""""""""

" Enable the wildmenu
set wildmenu

" Ignore compiled binary files
set wildignore=*.o,*.pyc,*/.DS_Store

" Show current position
set ruler

" Ignore case when searching and try to be smart about it
set ignorecase
set smartcase

" Highlight search terms
set hlsearch

" Show matching brackets when over them
set showmatch

" Incremental search
set incsearch

" Keep open files without having to save them before
set hid

" Don't redraw while executing macros (performance)
"set lazyredraw
