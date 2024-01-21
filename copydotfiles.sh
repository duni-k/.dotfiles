#!/usr/bin/bash
cp ~/.config/i3/config ~/.dotfiles/i3/
cp ~/.config/alacritty/alacritty.yml ~/.dotfiles/alacritty.yml
cp -r ~/.config/polybar/  ~/.dotfiles/
cp -r ~/.config/helix/ ~/.dotfiles/

cp ~/.Xmodmap ~/.dotfiles
cp ~/.Xresources ~/.dotfiles
cp ~/.zshrc ~/.dotfiles
echo "DONE"
