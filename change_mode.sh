# !/bin/bash

#cnt=$(find /home/guralin/.cache/ahifaoihjifoea -name 'dein' | wc -l)
#echo ${cnt}
#find /home/guralin/.cache/ -name 'dein' | wc -l

#files=$(ls)
#echo ${files}

if [ -e /home/guralin/.cache/dein ]; then
    echo "すごいね"
else
    echo "あんまりすごくないね"
fi

echo $HOME
