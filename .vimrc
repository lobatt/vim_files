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
call pathogen#infect()
syntax on
filetype plugin indent on

color darkblue
set guifont=Bitstream\ Vera\ Sans\ Mono\ 12

filetype plugin on
set ofu=syntaxcomplete#Complete

nmap <F5> <Esc>:tabnew<CR>
imap <F5> <Esc>:tabnew<CR>i
nmap <M-1> <Esc>:tabpre<CR>
imap <M-1> <Esc>:tabpre<CR>i
nmap <M-2> <Esc>:tabnext<CR>
imap <M-2> <Esc>:tabnext<CR>i
"for Taglist plugin
nnoremap <silent> <F8> :TlistOpen<CR>
"let Tlist_Auto_Open = 1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

"for omnicomplete
"set tags+=~/.vim/cpp_tags/cpp 
"set tags+=~/.vim/cpp_tags/ads 
" build tags of your own project with leader + t
nmap <leader>T :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

nmap <F12> <C-w><M-.> 
nmap <F10> <Esc>:!svn diff % <CR>

" for python
autocmd FileType python set expandtab

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

"twitvim
"let twitvim_proxy = "localhost:8087"
set encoding=utf-8

"vimbo
"let g:twitvim_api_root = "https://api.weibo.com/oauth2"

let g:tagbar_ctags_bin='/usr/local/bin/ctags'

"for clang_complete
let g:clang_use_library=1
