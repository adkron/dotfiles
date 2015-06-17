set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 " required!
Plugin 'gmarik/vundle'

filetype plugin indent on     " required!
 " My Plugins here:
 "
 " original repos on github
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails.git'
Plugin 'pangloss/vim-javascript'
Plugin 'wycats/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'taglist.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-markdown'
Plugin 'timcharper/textile.vim'
"Plugin 'taq/vim-rspec'
Plugin 'msanders/snipmate.vim'
Plugin 'tsaleh/vim-align'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mintplant/vim-literate-coffeescript'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'jelera/vim-gummybears-colorscheme'
Plugin 'tpope/vim-vividchalk'
Plugin 'cperl82/bufexplorer'
Plugin 'tsaleh/vim-matchit'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'Raimondi/delimitMate'
Plugin 'jgdavey/vim-blockle'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-indent-object'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scratch.vim'

filetype plugin indent on     " required!
