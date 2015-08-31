#!/bin/sh
#
# python install
#
#
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"
pip install -r $HOME/.dotfiles/python/requirement.txt

