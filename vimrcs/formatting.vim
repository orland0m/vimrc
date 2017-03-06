function FormatCFile()
    " ostyle should be an alias for astyle, but that passes all necesary options to astyle
    %!ostyle 2>/dev/null
endfunction

map <F7> :call FormatCFile()<CR>
