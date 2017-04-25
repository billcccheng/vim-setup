"Vundle
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
Bundle 'magarcia/vim-angular2-snippets'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syntax on
filetype plugin indent on
set nocompatible
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showmatch
set smartindent
set vb t_vb=  "stop beeping
set pastetoggle=<leader>p
"so ~/.vim/plugin/Rename.vim
"""so ~/.vim/plugin/surround.vim
execute pathogen#infect()
colorscheme monokai
"This is the mapping part
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

"nnoremap <TAB> :tabnext<CR>
noremap <C-z> :update<CR>
nnoremap <TAB> <C-w>w

"Press F4 to toggle highlighting on/off, and show current value.
noremap <F5> :set hlsearch! hlsearch?<CR>
nnoremap <space> i<space><esc>
nnoremap ; $A;<esc>
inoremap <leader>; <C-o>a;
"inoremap <leader>] <C-o>a
inoremap ty <C-o>a

inoremap <C-z> <esc>:update<CR> i
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Set no swp file
set noswapfile

"Set session
" Quick write session with F2
nnoremap <F2> :mksession! ~/vim_session <cr>
" And load session with F3
nnoremap <F3> :source ~/vim_session <cr>

"NERDTree Shortcut
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>o :NERDTreeTabsOpen <cr>
nnoremap <leader>c :NERDTreeTabsClose <cr>
nnoremap <leader>t :NERDTreeToggle <cr>

"vimgrep next
nnoremap <leader>n :cnext <cr>
nnoremap <leader>p :cprevious <cr>

"Moving in insert mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

