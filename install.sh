#! /usr/bin/env bash

echo "Linking tmux config..."
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf

echo "Cloning Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo "Linking vimrc config..."
ln -s $(pwd)/vimrc $HOME/.vimrc
