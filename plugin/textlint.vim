" TODO
" - locate VM, image, launcher script
" - function to invoke textlint
" - adding / loading into the quickfix list
" - highlighting
" - toggling, options

"if exists('g:loaded_textlint') || &compatible
    "finish
"endif
"let g:loaded_textlint = 1

if !exists('g:textlint_highlight')
    let g:textlint_highlight = 1
endif

command! -nargs=? -complete=file TextLint :call s:TextLint(<f-args>)
nnoremap <leader>tl :TextLint

let s:installDir = expand('<sfile>:p:h:h')
if has('win32')
    let s:vm = "/Windows32/pharo.exe"
elseif has('macunix')
    let s:vm = "/TextLint.tmbundle/Support/TextLint.app/Contents/MacOS/Croquet"
elseif has('unix')
    let s:vm = "/Linux32/pharo"
endif
let s:vm = s:installDir . s:vm
let s:launcher = s:installDir . "/textlint.bash"
let s:image = s:installDir . "/TextLint.tmbundle/Support/TextLint.image"

function! s:cmd(file)
    return s:launcher . ' ' . a:file . ' ' . s:vm . ' ' . s:image
endfunction

let s:detect_pattern = ""
let s:message_pattern = ""
let s:excerpt_pattern = ""

function! s:TextLint()
    let l:textlint_output = split(system(s:cmd), '\n')
    "file:L.C-L.C: explanation
    "    excerpt
    let l:occurences = []
    let l:each = -1
    while l:each < len(l:textlint_output)
        " locate next lint message, break if none
        let l:each = match(l:textlint_output, s:detect_pattern, l:each)
        if l:each == -1
            break
        endif
        " extract message & location info
        let l:parts = matchlist(l:textlint_output[l:each], s:message_pattern)
        let l:occurence_info = {
            'file name':   l:parts[1],
            'from line':   l:parts[2],
            'from column': l:parts[3],
            'to line':     l:parts[4],
            'to column':   l:parts[5],
            'message':     l:parts[6],
            'excerpt':     matchlist(l:textlint_output[l:each + 1], s:excerpt_pattern)[1]
        }
        add(l:occurences, l:occurence_info)
        " continue looking on next line
        let l:each += 1
    endwhile
    "TODO build a qflist, locating excepts by pattern
endfunction

function! s:TextLint(...)
    setlocal errorformat=%f:%l.%c-%*[0-9.]:\ %m
    setlocal errorformat+=%+G\	%.%#
    setlocal errorformat+=%-G%.%#

    let l:file = a:0 == 0 ? expand('%:p') : getcwd() . '/' . a:1

    echo 'Running TextLint on ' . l:file . '...'
    cexpr system(s:cmd(l:file))
    copen
endfunction

