#!/usr/bin/env bash

echo "Updating...";

cd ~/.files;
git pull origin master;

if [ ! -L ~/.zshrc ]; then
	echo "Symlink ~/.zshrc -> ~/.files/.zshrc";
	ln -s ~/.files/.zshrc ~/;
fi;

if [ ! -L ~/.vimrc ]; then
	echo "Symlink ~/.vimrc -> ~/.files/.vimrc";
	ln -s ~/.files/.vimrc ~/;

	echo "Symlink ~/.vim -> ~/.files/vim";
	ln -s ~/.files/vim ~/.vim;
fi;

if [ -d ~/.config/fish ]; then
	rm -fr ~/.config/fish/*; # fukit

	echo "Symlinking fish";

	ln -s ~/.files/fish/fishfile ~/.config/fish;
	ln -s ~/.files/fish/config.fish ~/.config/fish;
fi;

source ~/.zshrc;

echo "Done.";
