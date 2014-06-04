set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" Install dependencies:
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

" My Plugins here:
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/matchit.zip'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"My settings
set encoding=utf-8
set ruler
set autoindent
set smartindent
set number
set t_Co=256
syntax enable
set backspace=indent,eol,start

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

set laststatus=2

"YCM
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1

"Snipmate
imap <leader><tab> <Plug>snipMateNextOrTrigger

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
