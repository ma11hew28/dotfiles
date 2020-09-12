if [[ $# -eq 0 ]]; then
  echo 'Usage: zsh init.zsh relative/path/from/~/to/dotfiles'
  exit 1
fi

ln -sf "$1/gitconfig" ~/.gitconfig
mkdir -p ~/.config/git
ln -sf "../../$1/config/git/ignore" ~/.config/git/ignore
rm ~/.vim; ln -sf "$1/vim" ~/.vim
ln -sf "$1/zshrc" ~/.zshrc
ln -sf "$1/zshrc_private" ~/.zshrc_private
