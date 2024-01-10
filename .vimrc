set nocompatible

" Load up pathogen, using an alternative folder.
source ~/vim-mobile/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/vim-mobile/{}')

set encoding=utf-8

set showcmd                       " Display incomplete commands.
set noshowmode                    " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline                    " Highlight the line of the cursor.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set spelllang=en,nl
set complete+=kspell

set wrap                          " Turn on line wrapping.
set linebreak                     " Break lines.
set breakindent                   " Add indenting after break.
let &showbreak="↳ "               " Line break indicator.
set display+=lastline             " Show last line contents if it doesn't fit entirely on in buffer

set scrolloff=5                   " Line scroll offset from top and bottom.

set title                         " Set the terminal's title
set visualbell                    " No beeping.

set noswapfile                    " Disable .swp file creation.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.

set history=1000                  " Remember last 1000 commands.
set undolevels=1000               " Remember last 1000 undos.

" Configure vim path
" - .: search relative to the directory of the current file
" - **: current directory and all sub directories
set path=.,**
" Ignore paths for `path` config
" The path config sets `**` which searches everything, which can be a
" performance issue. Tell vim which directories to ignore.
set wildignore=*.swp,*.swo,*.bak,*.class,*.lock,.gitkeep,.git/**
set wildignore+=**/vendor/**,**/tmp/**,tmp/**,log/**,coverage/**,doc/**
set wildignore+=*.ico,*.png,*.PNG,*.JPG,*.jpg,*.JPEG,*.jpeg,*.GIF,*.gif
set wildignore+=*/node_modules,node_modules,*.min.js,public/packs/**,**/public/packs-test/**

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set shiftround
set expandtab                     " Use spaces instead of tabs.
au FocusGained,BufEnter * checktime

set clipboard=unnamed             " Enable OS clipboard to properly paste in to VIM buffer.
set pastetoggle=<F2>

if (has("termguicolors"))
 set termguicolors
endif
let &colorcolumn="80,100"         " Highlight column 80 and 100
let c_space_errors=1              " Highlight trailing spaces
set splitbelow                    " Open vsplits to below
set splitright                    " Open hsplits to the right
let mapleader=","

" Configure syntax highlighting
" Reduce syntax highlighting so it doesn't hang while trying to
" highlight everything.
syntax sync minlines=2000
syntax sync maxlines=5000
set synmaxcol=400
set redrawtime=4000
set lazyredraw

set shortmess+=IF
set shortmess-=S " Show search matches count on search

" Load all the other config files
" The `vim-mobile` path is the subdirectory in which this repo is cloned on
" the mobile device.
runtime! vim-mobile/config/**/*.vim
