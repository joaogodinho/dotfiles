set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()

filetype plugin indent on

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
let mapleader = ' '

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

syntax on

set mouse=a

set background=dark


" vim-airline settings
set laststatus=2

let g:airline_detect_paste=1

let g:airline#extensions#tabline#enabled=1

" nerdtree
nmap <leader>t :NERDTreeTabsToggle<CR>
let NERDTreeShowHidden = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
