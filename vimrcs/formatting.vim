autocmd BufNewFile,BufRead * call MapFormatCommand("generic") 
autocmd BufNewFile,BufRead *\.cpp|*\.c call MapFormatCommand("cpp")
autocmd BufNewFile,BufRead *\.java call MapFormatCommand("java")
autocmd BufNewFile,BufRead *\.go call MapFormatCommand("go")
autocmd BufNewFile,BufRead *\.scala call MapFormatCommand("scala")

" Astyle options
" >> Java & C common:
" --indent=spaces=4 --attach-closing-while --indent-col1-comments --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --break-one-line-headers --add-braces --close-templates --max-code-length=100 --suffix=none
" >> C only options:
" --style=allman --indent-preproc-block --indent-preproc-define --indent-preproc-cond --align-pointer=middle --align-reference=middle --mode=c
" >> Java only options:
" --style=java --mode=java

function MapFormatCommand(type)
    if a:type =~ "generic"
        map <F7> mzgg=G`z<CR>
    elseif a:type =~ "java"
        map <F7> :! astyle --indent=spaces=4 --attach-closing-while --indent-col1-comments --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --break-one-line-headers --add-braces --close-templates --max-code-length=100 --suffix=none --style=java --mode=java %<CR><CR>
    elseif a:type =~ "cpp"
        map <F7> :! astyle --indent=spaces=4 --attach-closing-while --indent-col1-comments --break-blocks=all --pad-oper --pad-comma --unpad-paren --delete-empty-lines --break-one-line-headers --add-braces --close-templates --max-code-length=100 --suffix=none --style=allman --indent-preproc-block --indent-preproc-define --indent-preproc-cond --align-pointer=middle --align-reference=middle --mode=c %<CR><CR>
    elseif a:type =~ "go"
        map <F7> :! gofmt -s -l -w %<CR><CR>
    elseif a:type =~ "scala"
        map <F7> :! scalafmt -i --non-interactive --quiet -f %<CR><CR>
    endif
endfunction
