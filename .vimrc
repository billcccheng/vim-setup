colorscheme monokai
"Vundle {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'othree/yajs.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"Plugin 'SirVer/ultisnips'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
"Plugin 'JamshedVesuna/vim-markdown-preview'
"Bundle 'magarcia/vim-angular2-snippets'
"Bundle 'justinj/vim-react-snippets'
"call vundle#end()            " required
"}}}

"System stuff {{{
syntax on
filetype plugin indent on
set foldmethod=marker
set cursorline
set cursorcolumn
set nocompatible
set number
set showmatch
set smartindent
set autoindent
set ignorecase
set splitright
"set mouse=a
set vb t_vb=  "stop beeping
set pastetoggle=<leader>p
execute pathogen#infect()
"Press F5 to toggle highlighting on/off, and show current value.
noremap <F5> :set hlsearch! hlsearch?<CR>
noremap <F4> :echo @%<CR>
" Set no swp file
set noswapfile

" Buffer Reload
set autoread
set updatetime=500
au CursorHold,CursorHoldI * checktime

" Trim Trailing White Space
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
"}}}

" Tab Stuffs {{{
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript.jsx setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" }}}

"Keyboad Mapping {{{
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap <TAB> <C-w>w
nnoremap n nzz
nnoremap N Nzz
noremap <leader>h :set hlsearch! hlsearch?<CR>
"Paste without yanking
xnoremap p pgvy 
"Paste in insert mode
imap <C-v> <C-r>"

"Resizing project view
nnoremap L :vertical resize +10<CR>
nnoremap H :vertical resize -10<CR>
" }}}

"Set Vim Session {{{
" Quick write session with F2
nnoremap <F2> :mksession! ~/.vim/session/vim_session <cr>
" And load session with F3
nnoremap <F3> :source  ~/.vim/session/vim_session <cr>
"}}}

"NERDTree Shortcut and lightline {{{
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>o :NERDTreeTabsOpen <cr>
nnoremap <leader>e :NERDTreeTabsClose <cr>
nnoremap <leader>t :NERDTreeToggle <cr>
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'separator': { 'left': ' >', 'right': ''  },
      \ 'subseparator': { 'left': '>', 'right': '>'  },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
set mouse=a
let g:NERDTreeMouseMode=2
" }}}

"vimgrep next {{{
nnoremap <leader>n :cnext <cr>
nnoremap <leader>p :cprevious <cr>
"}}}

" Delete to black hole buffer {{{
nnoremap <leader>d "_d
vnoremap <leader>d "_d
"}}}

"ALEGlobalConfig{{{
let g:ale_sign_error = '❌ '
let g:ale_sign_warning = '❗️'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEWarning ctermbg=LightRed
"}}}

"javascript and pyton linter/fixer {{{
let b:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8', 'pylint']
\}
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let b:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['autopep8', 'yapf']
\}
""}}}

" optional reset cursor on start:{{{
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
}}}



" Allow JSX in normal JS files
let g:jsx_ext_required = 0
