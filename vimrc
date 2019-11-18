set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set smartindent   " Do smart autoindenting when starting a new line
set shiftwidth=4

set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set showmatch

" kj is a combination unlikely to be typed for any other occasion.
imap kj <ESC>
nmap k gk
nmap j gj

set noswapfile

let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'mail': 1,
      \ 'python': 1
      \}

let g:jedi#max_doc_height = 18
let g:jedi#show_call_signatures = '2'
let g:jedi#popup_on_dot = 0
let g:pymode_rope = 0
