set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'xuhdev/vim-latex-live-preview'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set number
set laststatus=2
set tabstop=4
colorscheme cobalt
syntax on
set ignorecase smartcase
set nohlsearch
set incsearch
set wildmenu
set path+=**
set scrolloff=5

map "" diwi""<Esc>hp
":map "" bi"<Esc>lea"<Esc>

let g:ctrlp_show_hidden = 1

map <c-h> gT
map <c-l> gt

set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start
"
set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line
"
"set colorcolumn=80
"highlight ColorColumn ctermbg=blue

"let g:livepreview_engine = 'pdftex'


