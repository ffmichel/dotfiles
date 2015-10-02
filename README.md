# This repo is based on [holman dotfiles](https://github.com/holman/dotfiles)

## Preview

![Preview](https://github.com/ffmichel/bullet-train-oh-my-zsh-theme/raw/master/img/preview.gif)

## install

Run this:

```sh
git clone -b linux https://github.com/ffmichel/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
script/install
```

Then ask your sysadmin to run:

```sh
sudo apt-get install libncurses5-dev zsh tmux python-dev
sudo -E pip install -r <userhome>/.dotfiles/venv/requirement.txt
```

then run

```sh
chsh -s $(which zsh)
vim +PluginInstall +qall
```

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
