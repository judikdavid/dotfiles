set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'gregsexton/gitv'
Plugin 'tyru/open-browser.vim'
Plugin 'kien/ctrlp.vim'
"Plugin 'ronny/birds-of-paradise.vim'
Plugin 'scrooloose/syntastic'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'elzr/vim-json'
"Plugin '0x0dea/vim-molasses'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rking/ag.vim'
Plugin 'mxw/vim-jsx'
Plugin 'benmills/vimux'
Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"execute pathogen#infect()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

set relativenumber
set ruler

set hidden
set nobackup
set noswapfile

set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set expandtab
set shiftwidth=2
set wildmenu
set previewheight=20

" fix odd backspace behaviour
set backspace=start,eol,indent

" disable cursor keys in navigation
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Disable Syntastic for HTML
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
" powerline status always visible
" set laststatus=2

" powerline slow escape fix
"if ! has('gui_running')
    "set ttimeoutlen=10
    "augroup FastEscape
        "autocmd!
        "au InsertEnter * set timeoutlen=0
        "au InsertLeave * set timeoutlen=1000
    "augroup END
"endif

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" ctrlp ignore
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|DS_Store\|git\|cache\'

" ctrlp butter hotkey
:nmap , :CtrlPBuffer<CR>

" style files css syntax
au BufNewFile,BufRead *.scss set filetype=css

" switch between absolute and relative number lines
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

:au FocusLost * :set number
:au FocusGained * :set relativenumber

set undofile
set undodir=~/.vim-undo

" node_modules gf
set suffixesadd+=.js
set path+=$PWD/node_modules

" .vimrc tip to syntax highlight Node bash scripts
au! BufNewFile,BufRead,BufWrite * if getline(1) =~ '^\#!.*node' | setf javascript | endif

" set 256 color
set t_Co=256

let g:syntastic_eslint_exec='/usr/local/bin/eslint'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_javascript_checkers = ['jshint']

set clipboard=unnamed " use the system clipboard

" tags
set tags=./tags,tags;$HOME

" spell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

set complete+=kspell

set exrc
