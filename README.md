# dotfiles

My dotfiles for configuring Git, Vim, and Zsh.

## Install

1. Clone this project to `~/projects/dotfiles`, or wherever.

       git clone --depth 1 --recurse-submodules --shallow-submodules --remote-submodules https://github.com/ma11hew28/dotfiles.git ~/projects/dotfiles

2. Change directory to your clone of this project.

       cd ~/projects/dotfiles

3. Change the values of `name` and `email` in `config/git/config`.
4. Optional: Create a file named `zshrc_private` for your private commands.
5. Back up these files and directories because the next step replaces them.
   - `~/.config/git/config`
   - `~/.config/git/ignore`
   - `~/.vim`
   - `~/.zshenv`
   - `~/.zshrc`
   - `~/.zshrc_private`
6. Install dotfiles.

       sh install.sh projects/dotfiles

7. Restart Terminal.

## Manage Vim packages

This project uses Git submodules to manage Vim packages.

### List all Vim packages

    git submodule

### Add a Vim package

    git submodule add --depth 1 https://github.com/rust-lang/rust.vim.git vim/pack/bundle/start/rust.vim

### Update all Vim packages

    git submodule init && git submodule foreach --recursive 'git fetch --depth=1 && git gc --aggressive --prune=now && git submodule init'

### Delete a Vim package

    git rm vim/pack/bundle/start/rust.vim && rm -rf .git/vim/pack/bundle/start/rust.vim

## Update

1. Do install step 2.
2. Update this project.

       git pull

3. Update all the Vim packages, as above.
4. Do install steps 5–7.

## Uninstall

1. Do install step 2.
2. Uninstall dotfiles.

       sh uninstall.sh

3. Restart Terminal.
4. To keep anything, move it out of `~/projects/dotfiles`.
5. Remove your clone of this project.

       rm -rf ~/projects/dotfiles
