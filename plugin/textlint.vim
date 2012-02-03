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
    return s:launcher . ' "' . a:file . '" ' . s:vm . ' ' . s:image
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

