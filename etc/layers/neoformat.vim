let g:neoformat_try_formatprg = 1
let g:neoformat_run_all_formatters = 1
let g:neoformat_enabled_javascript=['clang-format']
" let g:neoformat_only_msg_on_error = 1

let s:ft = [ 'html','css','javascript','markdown']
func FormartV()
    if index(s:ft, &ft)>-1
        exec ':Prettier'
    else
        exec ':Neoformat'
    endif
endfunc

noremap <silent><c-s> :call FormartV()<cr>
