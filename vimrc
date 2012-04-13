set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle "scrooloose/nerdtree"
Bundle "mattn/zencoding-vim"
Bundle "vim-scripts/vimwiki"
Bundle "vim-scripts/AutoComplPop"
Bundle "kien/ctrlp.vim"
Bundle "Lokaltog/vim-powerline"
Bundle "sickill/vim-pasta"
Bundle "vim-scripts/Tagbar"
Bundle "jelera/vim-javascript-syntax"
Bundle "Raimondi/delimitMate"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-repeat"
Bundle "cakebaker/scss-syntax.vim"
" non github repos

filetype plugin indent on     " required! 
call pathogen#infect()
set nu
set ai
syntax on
set tabstop=4 
set shiftwidth=4
set expandtab 
set showmatch
set title " change the terminal's title
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set nobackup
set noswapfile 
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
filetype on
filetype plugin on
filetype indent on
nnoremap <silent> <F7> :NERDTree<CR>
nnoremap ; :
set background=dark
let g:scomment_default_mapping = 1
nmap <leader>G   :ToggleGitMenu<CR>
nmap ca :Calendar <cr>
"imap { {}<left>
"imap ( ()<left>
"imap [ []<left>
imap jj <Esc>
imap <C-f> <C-x><C-o>



" php documentor binding
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType htm set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType actionscript set omnifunc=ccomplete#Complete
:nmap <Space> <PageDown>
:vmap <BS> x
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" search
set incsearch

" status bar
set laststatus=2


" tagbar setting
let g:tagbar_ctags_bin="/usr/local/bin/ctags"
nnoremap <silent> <F5> :TagbarToggle<CR> <C-W> <left>
let g:tagbar_left=1

" load template
"  ref:https://github.com/fcamel/configs/commit/7a37bc27f108769cdc7b00ba17dd41d7ecd3d2fe
function LoadHtmlMain()
    0r ~/.vim/template/blank.html
    normal Gddkk
endfunction

autocmd BufNewFile *.html call LoadHtmlMain()
" powerline
let g:Powerline_symbols = 'fancy'
set t_Co=256 " Explicitly tell vim that the terminal has 256 colors


