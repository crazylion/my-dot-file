set nu
set ai
syntax on
set tabstop=4 
set expandtab 
filetype plugin on
filetype indent on
nnoremap <silent> <F7> :NERDTree<CR>
nnoremap <silent> <F5> :TlistToggle<CR>
set background=dark
set backupdir=~/.vimtmp//
set directory=~/.vimtmp//
let g:scomment_default_mapping = 1
nmap <leader>G   :ToggleGitMenu<CR>
nmap ca :Calendar <cr>
imap { {}<left>
imap ( ()<left>
imap [ []<left>
imap ;; <Esc>
imap <C-f> <C-x><C-o>
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
:nmap <Space> <PageDown>
:vmap <BS> x
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

