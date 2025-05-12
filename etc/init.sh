#!/bin/sh

[ "${SHELL##/*/}" != "zsh" ] && echo 'You might need to change default shell to zsh: `chsh -s /bin/zsh`'
dotfiles="$HOME/Develop/personal/dotfiles"

# install zsh thmems
sh "$dotfiles/etc/install-zsh-theme.sh"

# symlink dotfiles
sh "$dotfiles/etc/symlink-dotfiles.sh"
