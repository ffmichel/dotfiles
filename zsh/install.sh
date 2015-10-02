#!/bin/sh
#
# zsh
#
#
echo "installing zsh files..."
if [ ! -d  "$HOME"/.oh-my-zsh ]; then
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	git clone -b hostname-fix https://github.com/ffmichel/bullet-train-oh-my-zsh-theme.git ~/.oh-my-zsh/themes/bullet-train
fi

