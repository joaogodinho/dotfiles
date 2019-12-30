" Disable compatibility with vi
" although if this file exists, the flag
" this is set by default
set nocompatible

" Disable filetype indent and plugins
filetype off

" Add the included matchit pack, which enhances the matching
packadd! matchit

" Re-enable filetype, indent and plugins
filetype plugin indent on

" Disable parsing of header/footer for options
set nomodeline

" Should be the default already, but better to force
set encoding=utf-8

" Enable clipboard
set clipboard=unnamed

" Show cursor position info
set ruler

" Syntax highlighting
syntax on

" Enable mouse in all modes
set mouse=a

" Remap space (because I use it as leader)
nnoremap <space> <nop>
" Set leader
let mapleader=" "

" Hybrid relative line numbers (cursor shows actual line number)
" Other options are:
" - Absolute lines: set number
" - Relative lines: set relativenumber
set number relativenumber

" Wrap words instead of characters
" remember that gj and gk are used to move
" in a wrapped line
set wrap
set linebreak

" Tabbing options
" Use spaces
set expandtab
" How many columns are used for tab (in visual mode)
set tabstop=2
" How many columns are used or identing operations (> and <)
set shiftwidth=2
" How many columns are used for tab (in insert mode)
set softtabstop=2

" Keep at least these lines around the cursor when navigating with
" CTRL-E and CTRL-Y
set scrolloff=5

" Handle backspace correctly in different scenarios
set backspace=indent,eol,start

" Add HTML matching pairs
set matchpairs+=<:>
" This may add delay due to the plugin that handles this,
" so set a timeout for the matching process
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20

" Hidden buffers allow opening new buffers while keeping
" unsaved files in hidden buffers
set hidden

" Faster rendering
set ttyfast

" Always show statusline
set laststatus=2

" Show mode and cmd on lastline
set showmode
set showcmd

" By default allow regex searches "very magic"
nnoremap / /\v
vnoremap / /\v

" Highlight all search matches
set hlsearch

" Start matching when typing (CTRL+G CTRL+T to next/previous match)
set incsearch

" Ignore case by default
set ignorecase
" but search case sensitive when there are capital letters
set smartcase

" Briefly jump to the matching brace
set showmatch

" Clear search
map <leader><space> :let @/=''<cr>

" What to show when list mode is enabled
set listchars=tab:▸\ ,eol:¬,space:·,trail:·
" Toggle showing whitespaces
map <leader>l :set list!<CR>

" Set color scheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized8
