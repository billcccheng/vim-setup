cp .vimrc ~/
cp .tmux.conf ~/
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/session/
cp monokai.vim ~/.vim/colors

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git

# Nerdtree Stuffs
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/jistr/vim-nerdtree-tabs.git
git clone https://github.com/scrooloose/nerdcommenter.git

# Better UX for vim
git clone https://github.com/itchyny/lightline.vim
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/tpope/vim-surround.git

# Dev Icon for mac (it only works on mac for me)
git clone https://github.com/ryanoasis/vim-devicons.git`
`
# JavaScript Syntax Highlights
# Fall back to this js highlight if yajs is too slow
# git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/othree/yajs.vim.git

# Python Syntax Highlights
git clone https://github.com/kh3phr3n/python-syntax.git

# Typescript and jsx highlighter
git clone https://github.com/leafgarland/typescript-vim.git
git clone https://github.com/mxw/vim-jsx.git

# Graphql syntax
git clone https://github.com/jparise/vim-graphql.git

# These are for vim-snipmate
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git

# TMUX Plugin Mananger
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
