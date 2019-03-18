#!/bin/sh

#シンボリックリンクを作る

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/templates ~/.vim
ln -sf ~/dotfiles/after ~/.vim

cat << EOS
~/dotfiles/.vimrc 
のシンボリックリンクを~/.vimrcに置き換え
~/dotfiles/colors
~/dotfiles/templates
~/dotfiles/after 
のシンボリックリンクを~/.vimに配置
EOS

# deinが存在するか
if [ -e $HOME/.cache/dein ]; then
    echo "deinはインストール済み"
else
    sh bash/installer.sh ~/.cache/dein
fi

echo "Done!!"
