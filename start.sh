#!/bin/sh

#シンボリックリンクを作る

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/templates ~/.vim
ln -sf ~/dotfiles/after ~/.vim


# dein.vimをインストール

sh bash/installer.sh ~/.cache/dein
