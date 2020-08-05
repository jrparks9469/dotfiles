"""""""""""""""""""""""""""""""""""
" __     _____ __  __ ____   ____ "
" \ \   / /_ _|  \/  |  _ \ / ___|"
"  \ \ / / | || |\/| | |_) | |    "
"  _\ V /  | || |  | |  _ <| |___ "
" (_)\_/  |___|_|  |_|_| \_\\____|"
"""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype plugin on            " required
set number relativenumber
set laststatus=2
set noshowmode

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'vimwiki/vimwiki'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/youcompleteme'
Plugin 'majutsushi/tagbar'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set background=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build --shell-escape $*'
let g:Tex_ViewRuleComplete_pdf='zathura build/$*.pdf &'
let g:Tex_IgnoredWarnings=
            \'Label(s) may have changed'
let g:Tex_GotoError=0

" use markdown for vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'},
                     \{'path': '~/Documents/archive/AFRL/2020/research/wiki', 'syntax': 'markdown', 'ext': '.md'}]

" configure the lightline
let g:lightline={
    \ 'colorscheme':'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste'],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified'] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ }

" toggle nerdtree and tagbar
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" gruvbox terminal colors
let g:gruvbox_termcolors='256'
let g:gruvbox_contrast_dark='medium'
