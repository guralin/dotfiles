function! Make_Template(prog_lang)
    let inputfile = $HOME . "/dotfiles/templates/" . a:prog_lang
    echo inputfile
    normal ggO
    for line in readfile(inputfile)
        execute ":normal i" . line
        execute ":normal a\r"
    endfor
endfunction

" ファイルの名前を引数にとる
function! Create_command_args(ArgLead, CmdLine, CusorPos)
    let template_list = system('ls ~/dotfiles/templates/')
    return template_list
endfunction

" 引数に渡した名前のtemplateファイルを呼び出す
command! -nargs=1 -complete=custom,Create_command_args Template call Make_Template(<f-args>)
