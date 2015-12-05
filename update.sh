#!/usr/bin/env bash

echo "Updating...";

cd ~/.files;
git pull origin master;

if [ ! -L ~/.zshrc ]; then
	if [ -f ~/.zshrc ]; then
		rm ~/.zshrc;
	fi;

	echo "Symlink ~/.zshrc -> ~/.files/.zshrc";
	ln -s ~/.files/.zshrc ~/;
fi;

source ~/.zshrc;

echo "Done.";
