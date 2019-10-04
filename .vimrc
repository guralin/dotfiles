"setting
"シンタックスハイライトを有効にする
syntax on
" Raspberry Pi でもcolorschemeを適応させる
" http://blog.ksswre.net/2013/11/vim-colorscheme.html
set t_Co=256
"colorscheme: molokai , green, tokyo-metro, iceberg,yozakura,tone,night-owl
colorscheme tokyo-metro
"文字コードをUFT-8に設定
set fenc=utf-8
set encoding=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile " 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

" templateを読み込む
source ~/.vim/templates/make_template.vim


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
"set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" 対応する括弧に一瞬カーソルが飛ぶようになる
set showmatch
" showmatchのカーソルが飛ぶ時間を　0.1*n秒で設定(デフォルトは0.5秒)
set matchtime=2


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
"set listchars=tab:\▸\-
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" yankとOSのクリップボードを共有する。linuxではunnamedplusを使用する
set clipboard=unnamedplus,autoselect

" Pythonの設定
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with


" vimのバージョンやsetting.vimを見ながら読み込まれる設定を変えるスクリプト
" 変数modeを取得
source ~/dotfiles/setting.vim

"setting.vimを読み込み、設定がしてあればそちらを優先する
if mode != 'dein.vim' &&  mode != 'normal.vim'
    if  v:version >= 800
        let mode = "dein.vim"
    elseif
        let mode = "normal.vim"
    endif
endif

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/guralin/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/guralin/.cache/dein')
  call dein#begin('/home/guralin/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/guralin/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

