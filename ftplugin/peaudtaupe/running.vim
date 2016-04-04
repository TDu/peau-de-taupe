let newtask = "☐"
let donetask = "☑"

""autocmd!
"Move to the end of the file on opening
autocmd BufRead taupe.txt :$
"Add shortcut keys..."
"Position the cursor on writting position for next entry
autocmd FileType peaudtaupe  nnoremap <c-j> 'jkk
"Help insert entry types symbols in insert mode
autocmd FileType peaudtaupe  inoremap <c-j>td ☑
autocmd FileType peaudtaupe  inoremap <c-j>t ☐♪