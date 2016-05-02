let newtask = "☐"
let donetask = "☑"

""autocmd!
"Move to the end of the file on opening
autocmd BufRead taupe.txt :$
"Add shortcut keys..."
"Position the cursor on writting position for next entry
autocmd FileType peaudtaupe  nnoremap <c-j>n 'jkk
"Help insert entry types symbols in insert mode
autocmd FileType peaudtaupe  inoremap <c-j>td ☑
autocmd FileType peaudtaupe  inoremap <c-j>t ☐

"To switch through the beginning of line icon
function! Meow()
    echom "Meow!"
    "Copy the char on the forth column in the current line
    normal 04l"tyl
    "And put it in a variable
    let icon = @t
    let icons = ['☐', '☑', '⚪', '.']
    "Find it in the list"
    let pos = index(icons, icon)
    if pos > -1
        "If found switch to the next one
        let pos = pos + 1
        if pos == len(icons)
            let pos = 0
        endif
        let @t = get(icons, pos, '')
        "And display it instead
        normal x"tP
    endif

endfunction

autocmd FileType peaudtaupe nnoremap <c-j><c-j> :call Meow()<CR>
"04lrO
