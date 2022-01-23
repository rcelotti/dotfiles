#! /bin/sh

stow vim
pushd ~/.vim/ 
if [[ ! -d bundle ]]; then
    mkdir bundle
fi
cd bundle 
if [[ ! -d Vundle.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git
fi
popd

stow i3

# stow bin
# stow bash
# stow nvim
# 
# stow gtk
# stow picom
# stow polybar
# stow dunst
# stow rofi
# stow termite
# stow wallpapers
# stow X
# stow redshift
# stow mpd
# stow ncmpcpp
# stow alacritty
