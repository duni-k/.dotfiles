#!/usr/bin/bash
cp ~/.config/i3/config ~/.dotfiles/i3/
cp ~/.config/alacritty/alacritty.yml ~/.dotfiles/alacritty.yml
cp -r ~/.config/lvim/ ~/.dotfiles/lvim
cp -r ~/.config/helix/ ~/.dotfiles/helix

cp ~/.Xmodmap ~/.dotfiles
cp ~/.Xresources ~/.dotfiles
cp ~/.zshrc ~/.dotfiles
echo "DONE"
