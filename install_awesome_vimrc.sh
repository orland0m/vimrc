#!/bin/bash

function SuggestBinary() {
    command -v $1 --help &>/dev/null || echo "WARN: $1 is missing from the system, you should install it for better vimrc integration"
}

# This is a list of required tools, some plugins won't be able to load properly if they are missing
SuggestBinary "astyle"
SuggestBinary "nvim"
SuggestBinary "ack"
SuggestBinary "ctags"
SuggestBinary "gotags"
SuggestBinary "scalafmt"
SuggestBinary "gofmt"
echo "INFO: install powerline-fonts"
echo "INFO: In Mac OS use font 18pt Robot Mono Light for Powerline"

mkdir -p ~/.config/nvim

echo 'source ~/.vim_runtime/vimrc' > ~/.vimrc

echo 'source ~/.vimrc' > ~/.config/nvim/init.vim

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
