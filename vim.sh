# ctang's
#
#
# 
# Script to install vim configuration files 
# Tested with OSX and Ubuntu. 
#
# Easiest way to use this is to run this from your home folder in Terminal:
#
# curl https://raw.github.com/gist/1147370/vim.sh | sh
#
# You'll need Vim, Git and Curl installed to use this script with bash.
#

mkdir -p .vim/autoload
mkdir -p .vim/backup
mkdir -p .vim/bundles

cd .vim/bundles

git clone git://github.com/scrooloose/nerdtree.git
git clone git://github.com/scrooloose/nerdcommenter.git
git clone git://github.com/tpope/vim-surround.git
git clone git://github.com/msanders/snipmate.vim.git
git clone git://github.com/kien/ctrlp.vim.git

cd ~/

curl -L https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim > .vim/autoload/pathogen.vim

curl -L https://github.com/CopyChat/.vim.git/vimrc.link > .vimrc
