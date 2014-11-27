set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tyru/open-browser.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ronny/birds-of-paradise.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'elzr/vim-json'

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
colorscheme birds-of-paradise

set nu
set ruler

set hidden
set nobackup
set noswapfile

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
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

" map key for vimux command
map <Leader>vp :VimuxPromptCommand<CR>

" ctrlp ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|cache\|plugins'

" ctrlp butter hotkey
:nmap ; :CtrlPBuffer<CR>

" style files css syntax
au BufNewFile,BufRead *.scss set filetype=css

"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

set undofile
set undodir=~/.vim-undo
