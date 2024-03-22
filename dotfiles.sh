#!/bin/bash
#
#script: quick update of my dotfiles
#author: Anna Evdokimova (@HmJustHanna on github.com)
#

cp $HOME/.vimrc $HOME/dotfiles/.vimrc 
cp $HOME/.bashrc $HOME/dotfiles/.bashrc
cp $HOME/.bash_profile $HOME/dotfiles/.bash_profile
cp $HOME/.inputrc  $HOME/dotfiles/.inputrc
cp $HOME/.gitconfig $HOME/dotfiles/.gitconfig

cp $HOME/.Xresources $HOME/dotfiles/.Xresources
cp $HOME/.xinitrc $HOME/dotfiles/.xinitrc

cp $HOME/.config/zathura/zathurarc $HOME/dotfiles/zathurarc
cp $HOME/.config/htop/htoprc $HOME/dotfiles/htoprc

cp /etc/pacman.conf $HOME/dotfiles/pacman.conf

cp $HOME/.config/cava/config $HOME/dotfiles/cava/config
cp $HOME/.moc/config $HOME/dotfiles/moc/config
cp $HOME/.moc/keymap $HOME/dotfiles/moc/keymap






