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

" https://docs.emmet.io/cheat-sheet/
Plugin 'mattn/emmet-vim'

" NERDTree
" Move between tabs: gt gT
" Move between windows: <C>+w w and h j k l
" Resize n <C>+w ><
Plugin 'preservim/nerdtree'

Plugin 'vim-airline/vim-airline'
call vundle#end()

