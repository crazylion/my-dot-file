set nu
set ai
syntax on
set tabstop=4 
set shiftwidth=4
set expandtab 
set showmatch
set title " change the terminal's title
<<<<<<< HEAD
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set nobackup
set noswapfile 
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
=======
set encoding=utf8
>>>>>>> 038522a50770258a92e2539212390b9abb43e1cd
filetype on
filetype plugin on
filetype indent on
nnoremap <silent> <F7> :NERDTree<CR>
nnoremap <silent> <F5> :TlistToggle<CR>
nnoremap ; :
set background=dark
let g:scomment_default_mapping = 1
nmap <leader>G   :ToggleGitMenu<CR>
nmap ca :Calendar <cr>
imap { {}<left>
imap ( ()<left>
imap [ []<left>
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
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}]%m " file format
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white 
