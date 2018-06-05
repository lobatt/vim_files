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
set ruler

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
"set guifont=Inconsolata\ 12

set ofu=syntaxcomplete#Complete

"ctags
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

nmap <leader>T :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"svn
nmap <F10> <Esc>:!svn diff % <CR>

" for python
autocmd FileType python set noexpandtab ts=4

"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"

" for XML
let g:xml_syntax_folding=1
"au FileType xml setlocal foldmethod=syntax
au FileType xsd setlocal foldmethod=syntax
au FileType xsd setlocal foldlevel=2

"Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <F8> :TagbarToggle<CR> 

"for clang_complete
"let g:clang_use_library=1
"let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'

"for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = []

"plugin bundles
Bundle 'tpope/vim-fugitive'
Bundle 'L9'
"Bundle 'Rip-Rip/clang_complete'
Bundle 'msanders/snipmate.vim'
"Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'lobatt/Vimbo'
"js
Bundle 'othree/javascript-libraries-syntax.vim'
"go
Bundle 'fatih/vim-go'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
"complete
Bundle 'Valloric/YouCompleteMe'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" vim-react-snippets
Plugin 'justinj/vim-react-snippets'

" vim-solidity
Plugin 'tomlion/vim-solidity'

" ...

nmap <leader>rm :!make -j4 1>/dev/null<CR>

"go
set rtp+=/usr/local/Cellar/go/1.1/misc/vim
au BufRead,BufNewFile *.go set filetype=go
"au BufRead,BufNewFile *.go set expandtab
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
