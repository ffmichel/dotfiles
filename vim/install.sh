#!/bin/sh
#
# vim
#
echo "installing vim files..."
if [ ! -d  "$HOME"/.vim/bundle/Vundle.vim ]; then
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
if [ ! -d  "$HOME"/.powerline-fonts ]; then
	git clone https://github.com/powerline/fonts.git ~/.powerline-fonts
fi
source "$HOME"/.powerline-fonts/install.sh

