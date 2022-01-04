""""
" use the neomake plugin to run yamllint ALL THE TIME
call neomake#configure#automake('nrwi', 500)

""""
" trim blank and whitespace lines from EOF
function TrimEndLines()
    let save_cursor = getpos(".")
    silent! %s#\($\n\s*\)\+\%$##
    call setpos('.', save_cursor)
endfunction

autocmd BufWritePre *.* call TrimEndLines()
