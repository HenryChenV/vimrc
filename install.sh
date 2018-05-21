#!/bin/bash

if [ `which apt-get` ]; then
	sudo apt-get update
	sudo apt-get install exuberant-ctags -y
fi

if [[ -e ~/.vimrc ]]; then
    echo 'Backup vimrc to ~/.vimrc.bak'
    mv ~/.vimrc ~/.vimrc.bak
fi

if [[ -d ~/.vim ]]; then
    echo 'Backup vim to ~/.vim.bak'
    mv ~/.vim ~/.vim.bak
else
    mkdir ~/.vim
fi

if [[ ! -d ~/.vim/vundle ]]; then
    echo 'Install Vundle'
    git clone https://github.com/VundleVim/Vundle.vim ~/.vim/vundle
fi

cp vimrc ~/.vimrc
vim +PluginInstall +qall
echo 'install finished.'
exit 0

