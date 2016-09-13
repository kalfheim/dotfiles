set nocompatible              " be iMproved, required
filetype off                  " required

so ~/.files/vim/plugins.vim

set backspace=indent,eol,start
let mapleader = "\<Space>"

"--------------------Styling--------------------

syntax enable
set number

colorscheme atom-dark-256
set t_CO=256


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
