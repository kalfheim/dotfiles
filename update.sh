#!/usr/bin/env bash

echo "Updating...";

git pull origin master;

if [ ! -f ~/.zshrc ]; then
	echo "Symlink ~/.zshrc -> ~/.files/.zshrc";
	ln -s ~/.files/.zshrc ~/;
fi;

echo "Done.";
