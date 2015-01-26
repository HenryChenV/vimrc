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
fi

cp vimrc ~/.vimrc
cp -rf vim ~/.vim
echo 'install finished.'
exit 0

