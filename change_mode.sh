#!/bin/bash
echo "プラグインの有無を上書きします"
echo "dein.vimにしたい方は'd'を入力"
echo "プラグインなしにしたい方は'n'を入力"
echo "特に指定がない場合は'r'を入力して"
echo "<Enter>キーを押してください"

read mode
if [ $mode == 'd' ]; then
    sed  -i -e "2 s/let mode.*$/let mode = \"dein.vim\"/" setting.vim
    echo "dein.vimに変更"
elif [ $mode == "n" ]; then
    sed  -i -e "2 s/let mode.*$/let mode = \"normal.vim\"/" setting.vim
    echo "プラグインなしに変更"

elif [ $mode == "r" ]; then
    sed  -i -e "2 s/let mode.*$/let mode = \"\"/" setting.vim
    echo "指定なしにしました"
else
    echo "変更なし"
fi
