set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8' 
Plugin 'Valloric/YouCompleteMe' " Follow install instructions here: https://github.com/Valloric/YouCompleteMe/tree/master/plugin
Plugin 'tmhedberg/SimpylFold'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " Follow install instructions here: https://powerline.readthedocs.io/en/latest/


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Split areas
set splitbelow
set splitright

" PEP8 formatting
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Python syntax highlighting
let python_highlight_all=1
syntax on

" Stop 'ATTENTION' messages in linux when existing swap file is found
set shortmess+=A

" Flag whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Set UTF8 encoding
set encoding=utf-8

" Customize YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Map leader key
:let mapleader = " "

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
" See docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Colorschemes
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif
call togglebg#map("<F5>")

" Nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Powerline
set rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2 " Always show statusline
set t_Co=256 " Use 256 colours (Use this setting only if your terminal supports 256 colours)
