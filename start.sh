#!/bin/bash

#シンボリックリンクを作る

ln -sf ~/dotfiles/.vimrc ~/.vimrc
echo "~/dotfiles/.vimrc のシンボリックリンクを~/.vimrcに置き換え"

if [ ! -e ~/.vim ]; then
    mkdir ~/.vim
    echo ".vimを作成"
fi

ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/templates ~/.vim
ln -sf ~/dotfiles/after ~/.vim

echo "alias change_vim='. ~/dotfiles/change_mode.sh'" >> ~/.bashrc

source ~/.bashrc

cat << EOS
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
