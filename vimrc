set nu
set ai
syntax on
set tabstop=4 
set shiftwidth=4
set expandtab 
set showmatch
set title " change the terminal's title
filetype on
filetype plugin on
filetype indent on
nnoremap <silent> <F7> :NERDTree<CR>
nnoremap <silent> <F5> :TlistToggle<CR>
nnoremap ; :
set background=dark
set backupdir=~/.vimtmp//
set directory=~/.vimtmp//
let g:scomment_default_mapping = 1
nmap <leader>G   :ToggleGitMenu<CR>
nmap ca :Calendar <cr>
imap { {}<left>
imap ( ()<left>
imap [ []<left>
imap jj <Esc>
imap <C-f> <C-x><C-o>
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
