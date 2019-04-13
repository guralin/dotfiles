"setting
"シンタックスハイライトを有効にする
syntax on
"colorscheme: molokai , green, tokyo-metro, iceberg,yozakura,tone,night-owl
colorscheme tokyo-metro
"文字コードをUFT-8に設定
set fenc=utf-8
set encoding=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
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
set listchars=tab:\▸\-
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

set clipboard=unnamed,autoselect

" Pythonの設定
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 


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

if mode == 'dein.vim'
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
      "call dein#add('scrooloose/nerdtree')
      "call dein#add('Shougo/unite.vim')
      "
      "call dein#add('thinca/vim-quickrun')
      "" git
      "call dein#add('tpope/vim-fugitive')
      "call dein#add('othree/yajs.vim')
      "call dein#add('mattn/emmet-vim')


      " Required:
      call dein#end()
      call dein#save_state()
    endif

    " Required:
    filetype plugin indent on
    syntax enable

    " If you want to install not installed plugins on startup.
    if dein#check_install()
      call dein#install()
    endif

    "End dein Scripts-------------------------

    """"""""""""""""""""""""""""""
    " プラグインのセットアップ
    """"""""""""""""""""""""""""""
    set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

    call dein#begin(expand('~/.vim/dein'))

    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/vimproc.vim', {'build': 'make'})

    " ファイルオープンを便利に
    call dein#add('Shougo/unite.vim')
    " Unite.vimで最近使ったファイルを表示できるようにする
    call dein#add('Shougo/neomru.vim')

    call dein#end()

    " Required:
    filetype plugin indent on
    """"""""""""""""""""""""""""""


    " ファイルオープンを便利に
    "Plug 'Shougo/unite.vim'
    " Unite.vimで最近使ったファイルを表示できるようにする
    "Plug 'Shougo/neomru.vim'

    " http://blog.remora.cx/2010/12/vim-ref-with-unite.html
    """"""""""""""""""""""""""""""
    " Unit.vimの設定
    """"""""""""""""""""""""""""""
    " 入力モードで開始する
    let g:unite_enable_start_insert=1
    " バッファ一覧
    noremap <C-P> :Unite buffer<CR>
    " ファイル一覧
    noremap <C-N> :Unite -buffer-name=file file<CR>
    " 最近使ったファイルの一覧
    noremap <C-Z> :Unite file_mru<CR>
    " sourcesを「今開いているファイルのディレクトリ」とする
    noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
    " ウィンドウを分割して開く
    au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
    au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
    " ウィンドウを縦に分割して開く
    au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
    au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
    " ESCキーを2回押すと終了する
    au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
    au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
    """"""""""""""""""""""""""""""


    """NERDTreeの設定"""
    " vimとだけ打つと最初からツリーが出てくる
    " ファイル名をセットで打つとツリーは出てこない
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    """""""""""""""""""
endif

"------------------------------------
" emmet-vim
"------------------------------------
let g:user_emmet_leader_key='<c-e>'
let g:user_emmet_settings = {
    \    'variables': {
    \      'lang': "ja"
    \    },
    \   'indentation': '  '
    \ }
