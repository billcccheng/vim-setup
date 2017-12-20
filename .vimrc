colorscheme monokai

"Vundle {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"Plugin 'SirVer/ultisnips'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
"Plugin 'JamshedVesuna/vim-markdown-preview'
Bundle 'magarcia/vim-angular2-snippets'
"Bundle "justinj/vim-react-snippets"
call vundle#end()            " required
"}}}

"System stuff {{{
syntax on
filetype plugin indent on
set nocompatible
set number
set showmatch
set smartindent
set autoindent
set foldmethod=marker
set cursorline
set cursorcolumn
set vb t_vb=  "stop beeping
set pastetoggle=<leader>p
execute pathogen#infect()
"Press F4 to toggle highlighting on/off, and show current value.
noremap <F5> :set hlsearch! hlsearch?<CR>
" Set no swp file
set noswapfile
" Buffer Reload
set autoread
set updatetime=500
au CursorHold,CursorHoldI * checktime
"}}}

" Tab Stuffs {{{
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
" }}}

"Keyboad Mapping {{{
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
inoremap <C-l> <C-o>l
nnoremap <TAB> <C-w>w
" Open Stuffs in vim
nnoremap <C-g> :!open %<CR>
"Map Markdown Preview
nnoremap dp :LivedownPreview<CR>
" }}}

"AutoComplete Up and Down {{{
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
" }}}

"Moving in insert mode {{{
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
" }}}

"vimgrep next {{{
nnoremap <leader>n :cnext <cr>
nnoremap <leader>p :cprevious <cr>
"}}}

" Delete to black hole buffer {{{
nnoremap <leader>d "_d
vnoremap <leader>d "_d
"}}}

" Dark Background from monokai {{{
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
" }}}

" Allow JSX in normal JS files
let g:jsx_ext_required = 0 

