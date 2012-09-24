set nocompatible               " be iMproved
filetype off                   " required!

source $HOME/.vim/bundle.vim

let mapleader = ','
syntax enable

colorscheme vividchalk
set t_Co=256
" Set console highlights to be readable with black background
set bg=dark

" Make GUI colors light on dark
hi Normal guibg=black guifg=white

set autoindent          " Copy indent from current line for new line
set nosmartindent       " 'smartindent' breaks right-shifting of # lines

set history=10000       " Remember this many commands

set number              " Display line numbers
set numberwidth=4       " Minimum number of columns to show for line numbers
set ruler               " Always show the cursor position
set showmode            " Always show the mode
set showcmd             " Display incomplete commands
set incsearch           " Do incremental searching (as you type)
set hlsearch            " Highlight the latest search pattern
set laststatus=2        " Always show a status line

set splitright          " Split new vertical windows right of current window

set winminheight=0      " Allow windows to shrink to status line.
set winminwidth=0       " Allow windows to shrink to vertical separator.

set lbr                 " Wrap line on word boundaries
set wrap

set expandtab           " Insert spaces for <Tab> press; use spaces to indent.
set smarttab            " Tab respects 'shiftwidth', 'tabstop', 'softtabstop'.
set tabstop=2           " Set the visible width of tabs.
set softtabstop=2       " Edit as if tabs are 4 characters wide.
set shiftwidth=2        " Number of spaces to use for indent and unindent.
set shiftround          " Round indent to a multiple of 'shiftwidth'.
set showcmd             " Letting me know I'm in 'leader' mode

set wildmode=list:longest,full
set wildmenu

set virtualedit=block

" Care about case only if I use an uppercase letter
set ignorecase
set smartcase

" Make buffers less annoying, i.e.,
" keep changed buffers without requiring saves
set hidden

" Act more 'normal' about backpacking
" e.g. to backspace past start of edit
set backspace=indent,eol,start

" Make the keyboard and mouse act more like Windows
set selection=exclusive
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel

set whichwrap+=<,>,[,]

set listchars=tab:>-,trail:·
set list

" Update the swap file every 20 characters. I don't like to lose stuff.
"
set updatecount=20

" Command-T configuration
let g:CommandTMaxHeight=20

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" Source other settings from files
"
" Key mappings
source $HOME/.vim/keymaps.vim
" Commands
source $HOME/.vim/commands.vim
" File types
source $HOME/.vim/filetypes.vim
