#!/bin/sh

dotfiles="$HOME/Develop/personal/dotfiles"

echo ""
if [ -d "$dotfiles" ]; then
  echo "Symlinking dotfiles from $dotfiles"
else
  echo "$dotfiles does not exist"
  exit 1
fi

link() {
  from="$1"
  to="$2"
  echo "Linking '$from' to '$to'"
  ln -sf "$from" "$to"
}

link "$dotfiles/home/zshrc" "$HOME/.zshrc"
link "$dotfiles/home/p10k.zsh" "$HOME/.p10k.zsh"
link "$dotfiles/home/oh-my-zsh" "$HOME/.oh-my-zsh"
link "$dotfiles/home/config/nvim" "$HOME/.config/nvim"
