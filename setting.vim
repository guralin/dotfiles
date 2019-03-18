
let mode = ""

"let mode = 'dein.vim'

" すでに指示がなければバージョンを確認する
if mode != 'dein.vim' &&  mode != 'normal.vim'
    if  v:version >= 800
        let mode = "dein.vim"
    elseif
        let mode = "normal.vim"
    endif
endif


