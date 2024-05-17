set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" no more +"y to yank to system clipboar
" see :help provider-clipboard
set clipboard+=unnamedplus

