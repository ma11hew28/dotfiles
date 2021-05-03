#!/usr/bin/env zsh

if [[ $# -eq 0 ]]; then
  echo 'Usage: zsh init.zsh relative/path/from/~/to/dotfiles'
  exit 1
fi

mkdir -p ~/.config/git
ln -sf "../../$1/config/git/config" ~/.config/git/
ln -sf "../../$1/config/git/ignore" ~/.config/git/

if [[ -L ~/.vim ]]; then
  rm ~/.vim
fi
ln -sf "$1/vim" ~/.vim

ln -sf "$1/zshrc" ~/.zshrc
ln -sf "$1/zshrc_private" ~/.zshrc_private
