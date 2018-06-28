set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start
let mapleader = "\<Space>"

" Indentation stuff
filetype plugin indent on
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

"--------------------Styling--------------------

syntax enable

colorscheme atom-dark-256
set t_CO=256

set colorcolumn=80

" Wrap commit body at 72 characters
autocmd FileType gitcommit setlocal colorcolumn=72

set noshowmode

set laststatus=2


"--------------------Search--------------------

set hlsearch
set incsearch

" Clear the search with Leader + space
nmap <Leader><space> :nohlsearch<cr>


"--------------------Mappings--------------------

" Switch panes with Ctrl + [H-L]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Split below and to the right
set splitbelow
set splitright



"--------------------Autocommands--------------------

" Automatically source the .vimrc file
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
