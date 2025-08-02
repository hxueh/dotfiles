" =============================================================================
" Basic Settings
" =============================================================================

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix

" Disable compatibility with vi
set nocompatible

" Enable syntax highlighting
syntax enable

" Enable file type detection and plugins
filetype plugin indent on

" =============================================================================
" Display & UI
" =============================================================================

" Line numbers
set number
set relativenumber

" Highlight current line
set cursorline

" Show matching brackets
set showmatch

" Display incomplete commands
set showcmd

" Always show status line
set laststatus=2

" Show current mode
set showmode

" Line break
set linebreak
set wrap

" Show invisible characters
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Highlight search results
set hlsearch
set incsearch

" Better command line completion
set wildmenu
set wildmode=longest:full,full

" =============================================================================
" File Management
" =============================================================================

" Disable swap files
set noswapfile

" Auto-save settings
set autowrite
set autowriteall

" Auto-reload files when changed outside vim
set autoread

" =============================================================================
" Editing Behavior
" =============================================================================

" Clipboard
set clipboard=unnamedplus

" Tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Auto indentation
set autoindent
set smartindent

" Backspace behavior
set backspace=indent,eol,start

" Case sensitivity in search
set ignorecase
set smartcase

" Scroll offset
set scrolloff=8
set sidescrolloff=8

" =============================================================================
" Window & Split Management
" =============================================================================

" Split behavior
set splitright
set splitbelow

" Equal window sizes when splitting
set equalalways

" =============================================================================
" Mouse & Input
" =============================================================================

" Mouse support
set mouse=a
let g:is_mouse_enabled = 1

" Faster key repeat
set timeoutlen=500
set ttimeoutlen=10

" =============================================================================
" Folding
" =============================================================================

" Folding settings
set foldmethod=indent
set foldlevel=99
set foldcolumn=1

" =============================================================================
" Performance
" =============================================================================

" Faster scrolling
set ttyfast

" Don't redraw during macros
set lazyredraw

" Shorter update time
set updatetime=1000

" =============================================================================
" Key Mappings
" =============================================================================

" Set leader key
let mapleader = " "

" Clear search highlighting
nnoremap <leader>h :nohlsearch<CR>

" Better navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize splits with arrow keys
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" Move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Better indenting in visual mode
vnoremap < <gv
vnoremap > >gv

" =============================================================================
" Auto Commands
" =============================================================================



" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Return to last edit position when opening files
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" =============================================================================
" Color Scheme & Appearance
" =============================================================================

" Enable 24-bit RGB colors
if has('termguicolors')
    set termguicolors
endif

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
