set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'benmills/vimux'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-scripts/vim-soy'
Plugin 'flowtype/vim-flow'
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf.vim'
Plugin 'henrik/vim-indexed-search'
Plugin 'morhetz/gruvbox'
Plugin 'jremmen/vim-ripgrep'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'yuttie/comfortable-motion.vim'

" ale config
" let g:ale_linter_aliases = {'javascript': 'css'}
" let g:ale_linters = {'javascript': ['stylelint', 'eslint', 'flow']}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"execute pathogen#infect()
filetype plugin indent on

syntax enable
set background=light
colorscheme solarized

set relativenumber
set ruler

set hidden
set nobackup
set noswapfile

set nowrap        " don't wrap lines
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

:set tabstop=2
:set shiftwidth=2
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

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap , :Buffers<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>a :Rg<CR>

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

" use the system clipboard
set clipboard=unnamed 

" tags
set tags=./tags,tags;$HOME

" spell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell
autocmd FileType text setlocal spell

set complete+=kspell

set exrc

set notermguicolors
