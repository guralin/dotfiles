function! Make_Template(prog_lang)
    let inputfile ="/home/guralin/dotfiles/templates/" . a:prog_lang
    normal ggO
    for line in readfile(inputfile)
        execute ":normal i" . line
        execute ":normal a\r"
    endfor
endfunction

command! HTML5 call Make_Template("template.html")
command! Python call Make_Template("template.py")

