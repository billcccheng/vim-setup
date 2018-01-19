cp .vimrc ~/
cp .tmux.conf ~/
mkdir -p ~/.vim/colors
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
git clone git://github.com/jiangmiao/auto-pairs.git

# Typescript and jsx highlighter
git clone https://github.com/leafgarland/typescript-vim.git
git clone https://github.com/mxw/vim-jsx.git

# Enhanced javascript syntax
git clone https://github.com/jelera/vim-javascript-syntax.git

# Graphql syntax
git clone https://github.com/jparise/vim-graphql.git

# These are for vim-snipmate
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git
