# orland0m/vimrc

This is a fork from [amix/vimrc](https://github.com/amix/vimrc). Note that most of the documentation in that repository still aplies here. These are the main differences between orland0m/vimrc -> amix/vimrc:
- Using git submodules for plugins instead of having a raw copy from the plugin repos.
- Minor tweaks in install script to suggest tool installations; mainly as a reminder for me on new systems.
- Minor tweaks to some vim files and plugins to fit my preferences. The most significant change is `colorscheme solarized`, which needs  support by the terminal for proper display.
- Removed/added plugins based on my daily usage. These changes mainly related language support, but there also misc plugins for nice number handling for example.
- Removed install script for basic version
- While this is not mentioned in the original source, all of these configurations and plugins work best with [neovim](https://github.com/neovim/neovim).
- It is not a requirement to use neovim, but the install plugin also writes neovim's vimrc. If you don't use neovim and would like to remove this floating vimrc file see the neovim [FAQ](https://github.com/neovim/neovim/wiki/FAQ) to see where that vimrc is located and remove it.

## How to install orland0m/vimrc?
Similar to the original source, this includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following:

	git clone --recursive -j8 git@github.com:orland0m/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh

## How to update to latest version?

Simply just do a git rebase!

    cd ~/.vim_runtime
    git pull --rebase

## How to uninstall
Do following:
* Remove `~/.vim_runtime`
* Remove any lines that refernce `.vim_runtime` in your `~/.vimrc`
* [neovim] Remove any lines that reference `.vim_runtime` in your `~/.config/nvim/init.vim`
