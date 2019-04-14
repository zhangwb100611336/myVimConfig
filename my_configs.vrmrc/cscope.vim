
nmap <leader>sa :cs add cscope.out<cr>
nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>

set number

if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    set cspc=3
    "add any database in current dir
    if filereadable("cscope.out")
        cs add cscope.out
        "else search cscope.out elsewhere
    else
        let cscope_file=findfile("cscope.out", ".;")
        let cscope_pre=matchstr(cscope_file, ".*/")
        if !empty(cscope_file) && filereadable(cscope_file)
            exe "cs add" cscope_file cscope_pre
        endif
    endif
    set csverb
endif

