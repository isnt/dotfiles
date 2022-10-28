" ---------------------------- Vundle configuration ----------------------------
" See the Vundle installation instructions here:
" https://github.com/VundleVim/Vundle.vim#quick-start

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins
" Keep Plugin commands between vundle#begin/end.
Plugin 'ekalinin/dockerfile.vim'
Plugin 'pearofducks/ansible-vim'
Plugin 'stephpy/vim-yaml'
Plugin 'hashivim/vim-terraform'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" -------------------------- Vundle configuration end --------------------------

" Enable syntax highlighting
syntax enable

" Try to use colors that look good on a dark background
set background=dark

" Highlight all search pattern matches
set hlsearch

" Print the line number in front of each line
set number

" Highlight the current line
set cursorline

" Show some lines above and below the cursor to make more context visible
set scrolloff=5

" Don't wrap lines longer than the width of the window
set nowrap

" lightline plugin configuration:
set laststatus=2
set noshowmode

" Remove trailing whitespaces automatically on saving
" https://vim.fandom.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Jump to the last position when reopening a file
" (source: Ubuntu's /usr/share/vim/vimrc file)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
