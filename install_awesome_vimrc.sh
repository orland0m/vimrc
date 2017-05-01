#!/bin/bash

function SuggestBinary {
    echo "WARN: $1 is missing from the system"
}

# This is a list of recommended tools, not all of them are vim related
command -v astyle --help &>/dev/null || SuggestBinary "astyle"
command -v nvim --help &>/dev/null || SuggestBinary "nvim"
command -v ack --help &>/dev/null || SuggestBinary "ack"

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
