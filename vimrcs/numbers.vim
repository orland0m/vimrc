autocmd FocusLost * call ToggleNumbersOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleNumbersOn()
autocmd InsertLeave * call ToggleRelativeOn()

set rnu
set nu

function ToggleNumbersOn()
    set rnu!
endfunction

function ToggleRelativeOn()
    set rnu
endfunction
