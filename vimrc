set shell=bash
set nocompatible
filetype off " required by Vundle

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" aesthetic
Plugin 'altercation/vim-colors-solarized'
Plugin 'amix/vim-zenroom2'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'junegunn/goyo.vim'

" editor enhancements
Plugin 'dyng/ctrlsf.vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'schickling/vim-bufonly'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'

" clojure things
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-salve'
Plugin 'vim-scripts/paredit.vim'
Plugin 'vim-scripts/vim-niji'

" language support
Plugin 'dag/vim-fish'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-endwise'

" misc
Plugin 'chrisbra/unicode.vim'
Plugin 'itchyny/calendar.vim'
Plugin 'mhinz/vim-startify'
Plugin 'mileszs/ack.vim'
Plugin 'szw/vim-dict'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'vimwiki/vimwiki'

call vundle#end()
filetype plugin indent on

" ultimate vimrc stuff
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
