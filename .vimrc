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
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

syntax on
filetype plugin indent on

color darkblue 
set guifont=Bitstream\ Vera\ Sans\ Mono\ 12

set ofu=syntaxcomplete#Complete

"ctags
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

nmap <leader>T :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"svn
nmap <F10> <Esc>:!svn diff % <CR>

" for python
" autocmd FileType python set expandtab

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

"for clang_complete
let g:clang_use_library=1
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'

"plugin bundles
Bundle 'tpope/vim-fugitive'
Bundle 'L9'
Bundle 'Rip-Rip/clang_complete'
Bundle 'msanders/snipmate.vim'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'lobatt/Vimbo'
"js
Bundle 'othree/javascript-libraries-syntax.vim'
"go
Bundle 'Blackrush/vim-gocode'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

" ...

nmap <leader>rm :!make -j4 1>/dev/null<CR>

"go
set rtp+=/usr/local/Cellar/go/1.1/misc/vim
au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.go set expandtab
au BufRead,BufNewFile *.go set sw=2 ts=2
filetype plugin indent on
syntax on

nmap <leader>gr :!go run %<CR>
nmap <leader>gt :!go test -test.short -file %<CR>

"ruby
autocmd FileType ruby set expandtab
autocmd FileType ruby set sw=2 ts=2 

"js
au BufRead,BufNewFile *.js set expandtab
au BufRead,BufNewFile *.js set sw=2 ts=2

"dash
nmap <F1> <Esc>:Dash <CR>

"mouse
"set mouse=ar mousemodel=extend

"execute current line
nmap <leader>te :.w !bash<CR>
