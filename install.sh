#! /usr/bin/env bash

readonly DIRNAME="$(pwd)/$(dirname "$0")"
# Removes any trailing . from running inside this dir
readonly FULLDIR="$(sed "s/\/\.$//" <(echo -n $DIRNAME))"

echo "Linking tmux config..."
ln -i -s $FULLDIR/tmux.conf $HOME/.tmux.conf

echo "Linking alacritty config..."
ln -i -s $FULLDIR/alacritty.toml $HOME/.alacritty.toml
