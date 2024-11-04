if [[ $# -eq 0 ]]; then
  echo 'Usage: zsh install.zsh path/from/home/to/dotfiles'
  exit 1
fi

mkdir -p "${HOME}/.config/git"
ln -sf "../../$1/config/git/config" "${HOME}/.config/git"
ln -sf "../../$1/config/git/ignore" "${HOME}/.config/git"
rm -rf "${HOME}/.vim" \
  && ln -s "$1/vim" "${HOME}/.vim"
rm -rf "${HOME}/.zshenv" \
  && ln -s "$1/zshenv" "${HOME}/.zshenv"
rm -rf "${HOME}/.zshrc" \
  && ln -s "$1/zshrc" "${HOME}/.zshrc"
rm -rf "${HOME}/.zshrc_private" \
  && ln -s "$1/zshrc_private" "${HOME}/.zshrc_private"
