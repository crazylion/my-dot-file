set nocompatible              " be iMproved, required
set encoding=utf8
set background=dark
call plug#begin('~/.vim/plugged')
Plug 'rking/ag.vim'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wakatime/vim-wakatime'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code
" Install yarn from https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'splattael/rufo-vim'
Plug 'posva/vim-vue'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'luochen1990/rainbow'
" snippet 來源 (snipmate/UltiSnips 格式), 由 coc-snippets 讀取展開
Plug 'honza/vim-snippets'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
" Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " fzf binary + base vim plugin
Plug 'junegunn/fzf.vim'        " provides :Files, :GFiles, :Rg, etc.
call plug#end()

filetype plugin on           " enable filetype detection and plugins

let mapleader=","       " leader is comma
" ref: http://dougblack.io/words/a-good-vimrc.html
syntax enable   
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number              " show line numbers
set ai
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]

inoremap jj <esc>
" NERDTree 檔案樹: F5 單鍵開關
nnoremap <silent><F5> :NERDTreeToggle<CR>
" Tagbar 標籤側邊欄 (需 ctags): F8 單鍵開關
nnoremap <silent><F8> :TagbarToggle<CR>


set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set laststatus=2

" fzf 模糊查找檔案: git repo 內用 :GFiles, 否則 :Files
" 熱鍵: ,p  (leader 是逗號)
" 注意: Ctrl-P 被 iShot 的全域熱鍵吃掉了(Pin 貼圖功能), 按鍵根本到不了終端機,
"       所以平常請用 ,p。Ctrl-P 映射保留著, 哪天 iShot 改了快捷鍵它就會生效。
nnoremap <expr> <c-p>      (len(system('git rev-parse')) ? ':Files' : ':GFiles')."\<cr>"
nnoremap <expr> <leader>p  (len(system('git rev-parse')) ? ':Files' : ':GFiles')."\<cr>"

" coc-snippets + 補全選單的 Tab 行為:
"   可展開 snippet -> 直接展開或跳下一欄 (優先, 例如打 def 後按 Tab)
"   補全選單開著   -> 選下一個候選
"   其他           -> 一般 Tab
inoremap <silent><expr> <TAB>
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Enter 確認補全選單目前的選項 (snippet 項目確認後直接展開)
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" snippet 欄位間移動
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

" rainbow: 彩色括號配對 (luochen1990/rainbow), 需設此旗標才會啟用
let g:rainbow_active = 1


" allows cursor change in tmux mode
if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
  
au BufNewFile,BufRead *.ejs set filetype=html

autocmd FileType vue syntax sync fromstart
