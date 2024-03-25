#!/bin/bash
#
# about: quick update of all my dotfiles
# author: Anna Evdokimova (@HmJustHanna on github.com)
#

DOTFILES=$HOME/dotfiles #git repo

# VIM BASH GIT

cp $HOME/.vimrc $DOTFILES/vim/
cp $HOME/.bashrc $DOTFILES/bash/
cp $HOME/.bash_profile $DOTFILES/bash/
cp $HOME/.inputrc  $DOTFILES/bash/
cp $HOME/.gitconfig $DOTFILES/
cp /etc/pacman.conf $DOTFILES/

# X11

cp $HOME/.Xresources $DOTFILES/X11/
cp $HOME/.xinitrc $DOTFILES/X11/

# MPV YTFZF CAVA MOC

cp $HOME/.config/mpv/input.conf $DOTFILES/
cp $HOME/.config/mpv/mpv.conf $DOTFILES/
cp $HOME/.config/ytfzf/conf.sh $DOTFILES/ytfzf
cp $HOME/.config/ytfzf/subscriptions $DOTFILES/ytfzf
#cp $HOME/.config/cava/config $DOTFILES/cava/config
#cp $HOME/.moc/config $DOTFILES/moc/config
#cp $HOME/.moc/keymap $DOTFILES/moc/keymap

# MISC

cp $HOME/Documents/bookmarks.txt $HOME/.local/bin/dmenu/bookmarks-websearch.txt
cp $HOME/.config/zathura/zathurarc $DOTFILES/
cp $HOME/.config/htop/htoprc $DOTFILES/
