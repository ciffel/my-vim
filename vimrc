set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent on      " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Install dependencies:
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"

" My Bundles here:
Bundle 'garbas/vim-snipmate'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'

"My settings
set encoding=utf-8
set ruler
set autoindent
set smartindent
set number
set t_Co=256
syntax enable

"tab
set shiftwidth=2
set sts=2
set tabstop=2
set expandtab
autocmd FileType c,cpp,python set sw=4
autocmd FileType c,cpp,python set ts=4
autocmd FileType c,cpp,python set sts=4
autocmd BufNewFile,BufRead *.erb set filetype=eruby.html

"solarized theme
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"searched highlight
set hlsearch
set ignorecase smartcase
noremap <CR> :nohlsearch<CR>

"Powerline
let g:Powerline_symbols='unicode'
set laststatus=2

"Snipmate
imap <leader><tab> <Plug>snipMateNextOrTrigger

"YCM
let g:ycm_confirm_extra_conf=0


" ======================================
"  custom key and plugin configurations
" ======================================
" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" last edit
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif
