set shiftwidth=4
set softtabstop=4
set tabstop=4
set backspace=2
set nobk
set nocompatible
set showmatch
set autoindent
set smartindent
set hlsearch

"pathogen
"call pathogen#infect()

"Vundle
filetype off                   " required!
set rtp+=~/.vim/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

syntax on
filetype plugin indent on

color darkblue
set guifont=Bitstream\ Vera\ Sans\ Mono\ 12

filetype plugin on
set ofu=syntaxcomplete#Complete

"ctags
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

nmap <leader>T :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"svn
nmap <F10> <Esc>:!svn diff % <CR>

" for python
autocmd FileType python set expandtab

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

"for clang_complete
let g:clang_use_library=1

"plugin bundles
Bundle 'tpope/vim-fugitive'
Bundle 'L9'
Bundle 'Rip-Rip/clang_complete'
Bundle 'msanders/snipmate.vim'
Bundle 'ervandew/supertab'
Bundle 'lobatt/Vimbo'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
