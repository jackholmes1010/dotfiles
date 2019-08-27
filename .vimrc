set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" -- Vundle start
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'chriskempson/base16-vim'
Plugin 'mhartington/oceanic-next'
Plugin 'leafgarland/typescript-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'quramy/tsuquyomi'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'morhetz/gruvbox'
Plugin 'w0rp/ale'
Plugin 'tomtom/tcomment_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'dracula/vim'
Plugin 'junegunn/seoul256.vim'

" All of your Plugins must be added before the following line
call vundle#end()
" -- Vundle end

syntax on
color dracula
filetype plugin indent on

set number
set relativenumber
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set linespace=4

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

" Map FZF shortcuts
map ,,s :FZF<Enter>

" Make NERDTree open on the right
let g:NERDTreeWinPos = "right"

" Configure tslint with ale
let g:ale_linters = { 'typescript': ['tsserver', 'tslint'] }

" Configure typescript fixer for ale
let g:ale_fixers = { 'typescript': ['tslint'] }

" Configure ale to auto-fix on save
let g:ale_fix_on_save = 1

" Tsu go to definition shortcut
map gdd <C-]>

