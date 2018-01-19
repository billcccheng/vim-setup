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
"Bundle 'magarcia/vim-angular2-snippets'
"Bundle 'justinj/vim-react-snippets'
call vundle#end()            " required
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
set mouse=a
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
" }}}

"Keyboad Mapping {{{
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap <TAB> <C-w>w
" }}}

"Set Vim Session{{{
" Quick write session with F2
nnoremap <F2> :mksession! ~/vim_session <cr>
" And load session with F3
nnoremap <F3> :source ~/vim_session <cr>
"}}}

"NERDTree Shortcut and lightline{{{
nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>o :NERDTreeTabsOpen <cr>
"nnoremap <leader>c :NERDTreeTabsClose <cr>
nnoremap <leader>t :NERDTreeToggle <cr>
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'separator': { 'left': ' ⮁', 'right': ''  },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃'  },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

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

"lint{{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nnoremap <leader>s :SyntasticCheck<CR> :SyntasticToggleMode<CR>
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
"let g:syntastic_javascript_checkers = ['eslint']

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

""}}}

" Allow JSX in normal JS files
let g:jsx_ext_required = 0
