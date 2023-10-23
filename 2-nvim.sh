#!/bin/bash

# ---------------------------------------------------
# Download plug
# ---------------------------------------------------
echo ""
echo "-> Install Plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# ---------------------------------------------------
# SymLink init.vim
# ---------------------------------------------------
echo ""
echo "-> Install init.vim"
_installSymLink init.vim ~/.config/neovim/init.vim ~/dotfiles/neovim/init.vim ~/.config/neovim/init.vim
