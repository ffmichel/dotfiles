#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if [ "$(uname)" == "Darwin" ]; then
  if test ! $(which brew)
  then
    echo "  Installing Homebrew for you."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  # Install homebrew packages
  brew install grc coreutils spark python wget tmux ack vim

  brew link --overwrite python
fi
exit 0
