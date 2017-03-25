mv .vimrc ~/
mv .tmux.conf ~/

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/jistr/vim-nerdtree-tabs.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/itchyny/lightline.vim 
git clone https://github.com/VundleVim/Vundle.vim.git 
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
git clone git://github.com/jiangmiao/auto-pairs.git

mkdir ~/.vim/colors
cd ~/.vim/colors
wget http://billcccheng.github.io/pages/monokai.vim
