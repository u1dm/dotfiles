#!/bin/bash

rm -rf ~/monet/home/

mkdir ~/monet/home
mkdir ~/monet/home/.config
mkdir ~/monet/home/.themes
mkdir ~/monet/home/.wallpaper

cp -r ~/.themes/ ~/monet/home/
cp -r ~/.wallpaper/ ~/monet/home/

cp  -r ~/.config/btop ~/monet/home/.config/
cp  -r ~/.config/cava ~/monet/home/.config/
cp  -r ~/.config/gtk-4.0 ~/monet/home/.config/
cp  -r ~/.config/hypr ~/monet/home/.config/
cp  -r ~/.config/gtklock ~/monet/home/.config/
cp  -r ~/.config/waybar ~/monet/home/.config/
cp  -r ~/.config/kitty ~/monet/home/.config/
cp  -r ~/.config/nwg-look ~/monet/home/.config/
cp  -r ~/.config/rofi ~/monet/home/.config/
cp  -r ~/.config/wal ~/monet/home/.config/


echo "commit-name:"
read commit_message


git add .

git commit -m "$commit_message"

git push origin main

