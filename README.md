# dotfiles

My dotfiles.

## Install

1. Clone this project to `~/dotfiles`, or wherever.

       git clone --depth 1 --recurse-submodules --shallow-submodules --remote-submodules https://github.com/ma11hew28/dotfiles.git ~/dotfiles

2. Change the values of `name` and `email` in `config/git/config`.
3. Optional: Create a file named `zshrc_private` for any private commands.
4. Back up these files and directories because step 6 replaces them.
   - `~/.config/git/config`
   - `~/.config/git/ignore`
   - `~/.vim`
   - `~/.zshenv`
   - `~/.zshrc`
   - `~/.zshrc_private`
5. Restart Terminal and change directory to this project.

       cd ~/dotfiles

6. Install dotfiles.

       zsh install.zsh dotfiles

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

1. Restart Terminal and change directory to this project.

       cd ~/dotfiles

2. Update this project.

       git pull

2. Update all the Vim packages, as above.

3. Do install steps 5–7.

## Uninstall

1. Restart Terminal and change directory to this project.

       cd ~/dotfiles

2. Uninstall dotfiles.

       zsh uninstall.zsh

3. Restart Terminal.
4. Optional: Move anything you want to keep out of this project.
5. Remove this project.

       rm -rf ~/dotfiles
