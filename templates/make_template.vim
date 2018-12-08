function! Make_Template(prog_lang)
    let inputfile = $HOME . "/dotfiles/templates/" . a:prog_lang
    echo inputfile
    normal ggO
    for line in readfile(inputfile)
        execute ":normal i" . line
        execute ":normal a\r"
    endfor
endfunction

command! HTML5 call Make_Template("template.html")
command! Python call Make_Template("template.py")
command! Bash call Make_Template("template.sh")

