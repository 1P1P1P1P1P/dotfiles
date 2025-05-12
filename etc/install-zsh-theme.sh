#!/bin/sh

ohmyzsh="$dotfiles/home/oh-my-zsh"
if [ -d "$ohmyzsh" ]; then
  themes="$ohmyzsh/custom/themes"
  mkdir -p "$themes"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$themes/powerlevel10k"
else
  echo "$ohmyzsh seems not exist"
fi
