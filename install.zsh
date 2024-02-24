if [[ $# -eq 0 ]]; then
  echo 'Usage: zsh install.zsh path/from/~/to/dotfiles'
  exit 1
fi

mkdir -p ~/.config/git
ln -sf "../../$1/config/git/config" ~/.config/git
ln -sf "../../$1/config/git/ignore" ~/.config/git
[[ -L ~/.vim ]] && rm ~/.vim && ln -s "$1/vim" ~/.vim
ln -sf "$1/zshenv" ~/.zshenv
ln -sf "$1/zshrc" ~/.zshrc
ln -sf "$1/zshrc_private" ~/.zshrc_private
