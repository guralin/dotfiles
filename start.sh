#!/bin/sh

#シンボリックリンクを作る

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/templates ~/.vim


# dein.vimをインストール

sh bash/installer.sh ~/.cache/dein
