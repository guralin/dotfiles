#!/bin/bash
echo "dein.vimにしたい方は'd'を、プラグインなしにしたい方は'n'を入力して<Enter>キーを押してください"
read mode
if [[ $mode == 'n' ]];then
    sed -i -e "2 s/dein.vim/normal.vim/" setting.vim
elif [ $mode == "d" ]; then
    sed -i -e "2 s/normal.vim/dein.vim/" setting.vim
else
    echo "変更なし"
fi
