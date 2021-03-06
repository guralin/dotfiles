#!/bin/bash
echo "プラグインの有無を上書きします"
echo "dein.vim:'d' プラグインなし:'n' 特に指定がない場合:'r'"
echo "入力して<Enter>キーを押してください"

read mode
if [ $mode == 'd' ]; then
    sed  -i -e "2 s/let mode.*$/let mode = \"dein.vim\"/" ~/dotfiles/setting.vim
    echo "dein.vimに変更"
elif [ $mode == "n" ]; then
    sed  -i -e "2 s/let mode.*$/let mode = \"normal.vim\"/" ~/dotfiles/setting.vim
    echo "プラグインなしに変更"

elif [ $mode == "r" ]; then
    sed  -i -e "2 s/let mode.*$/let mode = \"\"/" ~/dotfiles/setting.vim
    echo "指定なしにしました"
else
    echo "変更なし"
fi
