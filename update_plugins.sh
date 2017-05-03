#!/bin/bash

for plugin in sources/*; do
    [ -d "${plugin}" ] || continue # if not a directory, skip
    echo "Will update plugin: $plugin"
    pushd $plugin
    git checkout master
    git pull
    popd
done

pushd autoload
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > pathogen.vim
popd
