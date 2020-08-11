set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" General Productivity
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'
Plugin 'ctrlpvim/ctrlp.vim'

" Python
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

" C and C++ stuff
Plugin 'xavierd/clang_complete'

" JavaScript and React
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'

" Unicode
Plugin 'joom/latex-unicoder.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set smartindent   " Do smart autoindenting when starting a new line
set shiftwidth=4

set statusline+=%F
set laststatus=2
set number
set showcmd
filetype indent on
set wildmenu
set showmatch

" faster tabe
com! -nargs=? E tabe <args>

" kj is a combination unlikely to be typed for any other occasion.
imap kj <ESC>
nmap k gk
nmap j gj

set noswapfile

let g:jedi#max_doc_height = 18
let g:jedi#show_call_signatures = 2
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#auto_close_doc = 0

nnoremap <C-x> :BuffergatorToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
let g:SuperTabDefaultCompletionType = "context"

nmap <C-h> gT
nmap <C-l> gt

syntax enable
set background=dark
colorscheme spacegray
set termguicolors

"set background=dark
"if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"endif
"colorscheme solarized8

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" buffergator settings
let g:buffergator_autoupdate = 1
let g:buffergator_viewport_split_policy = "R"

" open NERDTree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeQuitOnOpen = 0

let g:clang_library_path='/usr/lib/llvm-9/lib/libclang.so.1'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set cursorline
set mouse=a

" set filetype based on extension
au BufRead,BufNewFile *.mdx setfiletype markdown

au FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab
au FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
