set encoding=utf-8
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set showmatch

highlight Comment ctermfg=green

let python_highlight_all = 1


set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
call vundle#end()

call vundle#begin()
Plugin 'preservim/nerdtree'
call vundle#end()
