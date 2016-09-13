set nocompatible

syntax enable
set backspace=indent,eol,start
let mapleader = "\<Space>"
set number

colorscheme atom-dark-256
set t_CO=256

set hlsearch
set incsearch

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

nmap <Leader><space> :nohlsearch<cr>

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
