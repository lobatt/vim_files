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

set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"set guifont=Inconsolata\ 12

set ofu=syntaxcomplete#Complete

"ctags
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

nmap <leader>T :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"svn
nmap <F10> <Esc>:!svn diff % <CR>

" for python
autocmd FileType python set expandtab ts=4

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
let g:ycm_log_level = 'debug'
let g:ycm_server_python_interpreter='/opt/homebrew/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = []

"plugin bundles
Bundle 'tpope/vim-fugitive'
Bundle 'L9'
Plugin 'ctrlpvim/ctrlp.vim'
"Bundle 'Rip-Rip/clang_complete'
"Bundle 'msanders/snipmate.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
"Bundle 'lobatt/Vimbo'
"js
Plugin 'vim-syntastic/syntastic'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'moll/vim-node'
Plugin 'ternjs/tern_for_vim'
Plugin 'joaohkfaria/vim-jest-snippets'
Plugin 'prettier/vim-prettier'
"go
Bundle 'fatih/vim-go'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
"complete
Bundle 'ycm-core/YouCompleteMe'
Plugin 'zxqfl/tabnine-vim'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" vim-react-snippets
Plugin 'justinj/vim-react-snippets'

" vim-solidity
Plugin 'tomlion/vim-solidity'
Bundle 'uarun/vim-protobuf'

" rust
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

"solidity 
au BufRead,BufNewFile *.sol set filetype=solidity
autocmd FileType solidity set syntax=solidity

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" ...

nmap <leader>rm :!make -j4 1>/dev/null<CR>

"go
au BufRead,BufNewFile *.go set filetype=go
"au BufRead,BufNewFile *.go set expandtab
au BufRead,BufNewFile *.go set sw=2 ts=2
filetype plugin indent on
syntax on

"go related files
nmap <leader>r :GoAlternate<CR>

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

" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" javascript
let g:syntastic_javascript_checkers=['eslint']
let g:used_javascript_libs = 'jquery,react,chai'

"yml
au BufRead,BufNewFile *.yml set expandtab
au BufRead,BufNewFile *.yml set sw=2 ts=2
