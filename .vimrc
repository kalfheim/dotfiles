set nocompatible

syntax enable
set backspace=indent,eol,start
let mapleader = ','
set number

colorscheme atom-dark-256
set t_CO=256

set hlsearch
set incsearch

set splitbelow
set splitright

nmap <Leader><space> :nohlsearch<cr>

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
