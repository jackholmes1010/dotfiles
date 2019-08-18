set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" -- Vundle start
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'chriskempson/base16-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'leafgarland/typescript-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()
" -- Vundle end

syntax on
color jellybeans
filetype plugin indent on

set number
set relativenumber
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell


" Status bar
set laststatus=2

" Fix slow scrolling
set ttyfast

" Insert closing curly braces
inoremap {<CR>  {<CR>}<Esc>O

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Map pane switching shortcuts
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <,,l> <C-W>l
map ,w <C-w>w

