let g:neoformat_try_formatprg = 1
let g:neoformat_run_all_formatters = 1
let g:neoformat_enabled_javascript=['clang-format']
" let g:neoformat_only_msg_on_error = 1

let s:ft = [ 'javascript','css','html','markdown','ts']
func FormartV()

    if index(s:ft, &ft)>0
        exec ':Prettier'
        exec ':TailSort'
        exec ':w'
    elseif index(s:ft, &ft)==0
        exec ':Prettier'
    else
        exec ':Neoformat'
        " exec ':Format'
        " if &ft == 'python'
        "     exec 'CocCommand python.sortImports'
        " endif
    endif
endfunc

noremap <silent><c-s> :call FormartV()<cr>
