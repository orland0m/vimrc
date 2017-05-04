#!/bin/bash

function SuggestBinary {
    echo "WARN: $1 is missing from the system"
}

# This is a list of required tools, some plugins won't be able to load if they are missing
command -v astyle --help &>/dev/null || SuggestBinary "astyle"
command -v nvim --help &>/dev/null || SuggestBinary "nvim"
command -v ack --help &>/dev/null || SuggestBinary "ack"
command -v ctags --help &>/dev/null || SuggestBinary "ctags"
command -v gotags --help &>/dev/null || SuggestBinary "gotags"
echo "INFO: install powerline-fonts"
echo "INFO: In Mac OS use font 18pt Robot Mono Light for Powerline"

mkdir -p ~/.config/nvim
cd ~/.vim_runtime

echo 'source ~/.vim_runtime/vimrc' > ~/.vimrc

echo 'source ~/.vimrc' > ~/.config/nvim/init.vim

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
