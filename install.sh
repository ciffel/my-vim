#! /bin/bash
ln -s ~/.vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c "PluginInstall"
cd ~/.vim/bundle/YouCompleteMe
./install.sh
