"""""""""""""""""""""""""""""""""""""""
" _   _         __     ___            "
"| \ | | ___  __\ \   / (_)_ __ ___   "
"|  \| |/ _ \/ _ \ \ / /| | '_ ` _ \  "
"| |\  |  __/ (_) \ V / | | | | | | | "
"|_| \_|\___|\___/ \_/  |_|_| |_| |_| "
"""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype plugin on            " required
set number relativenumber
set laststatus=2
set noshowmode
set nohlsearch

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'neomake/neomake'

call plug#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on

set background=dark
colorscheme "gruvbox"
let g:lightline = {"colorscheme":"gruvbox"}

"hi Normal guibg=NONE ctermbg=NONE

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build --shell-escape $*'
let g:Tex_ViewRuleComplete_pdf='zathura build/$*.pdf &'
let g:Tex_IgnoredWarnings=
            \'Label(s) may have changed'

" toggle nerdtree and tagbar
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
