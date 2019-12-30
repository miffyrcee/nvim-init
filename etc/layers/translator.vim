func! LangSelector(var)
    if a:var
        let g:translator_target_lang = 'zh'
    else
        let g:translator_target_lang = 'en'
    endif
endfunc
nmap <silent> <m-p> :call LangSelector(1)<cr><esc>V<Plug>TranslateV
nmap <silent> <m-=> :call LangSelector(0)<cr><esc>V<Plug>TranslateV

" vmap <silent> <Leader>t <Plug>TranslateV
" vmap <silent> <Leader>t <Plug>TranslateV
" " Display translation in a window
" nmap <silent> <Leader>w <Plug>TranslateW
" vmap <silent> <Leader>w <Plug>TranslateWV
" " Replace the text with translation
" nmap <silent> <Leader>r <Plug>TranslateR
" vmap <silent> <Leader> r <Plug> TranslateRV。
let g:translator_proxy_url = 'http://127.0.0.1:8090/'
let g:translator_default_engines=['google']
