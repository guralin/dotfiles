# guralinのdotfiles保存場所


## vimの中

- colorscheme
- dein.vim
- NEADTree
- emmet-vim
- その他

## 使用方法

1. `cd ~/`
1. `git clone https://github.com/guralin/dotfiles.git`
1. `sh start.sh`

## プラグインの有無を変更出来ます

dein.vimはvim8.0以降対応のため、それ以前のvimを
使われている場合は自動的にプラグインを読み込まないように
なっています。

ただし特にプラグインの有無を指定したい場合は
以下のコマンドから変更出来ます。

`change_vim`

## 参考URL

- [dotfilesをGitHubで管理](https://qiita.com/okamos/items/7f5461814e8ed8916870)

- [dein.vim](https://github.com/Shougo/dein.vim)
