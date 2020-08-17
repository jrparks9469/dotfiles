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
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'neomake/neomake'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on

set background=dark
colorscheme gruvbox

" gruvbox terminal colors
let g:gruvbox_termcolors='256'
let g:gruvbox_contrast_dark='medium'

" configure lightlight
let g:lightline = {
    \ 'colorscheme':'gruvbox',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste'],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified'] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ }

" vimwiki configuations
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build --shell-escape $*'
let g:Tex_ViewRuleComplete_pdf='zathura build/$*.pdf &'
let g:Tex_IgnoredWarnings=
            \'Label(s) may have changed'

" toggle nerdtree and tagbar
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" neomake configuration
call neomake#configure#automake('nrwi', 500)
let g:nomake_open_list=2

" deoplete/snippets config
let g:deoplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
