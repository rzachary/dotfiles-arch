#!/usr/bin/env bash

cd "${dirname "${BASH_SOURCE}"}";


git pull origin main;

function doIt(){
	echo -e "Hello World"
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.MD" \
		--exclude "LICENSE" \
		--exclude "fonts/" \
		--exclude "installers/" \
		--exclude "update.sh" \
		-avh --no-perms . ~;
	source ~/.bashrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "":
	if [[ $REPLY =~ ^[Yy]$  ]]; then
		doIt;
	fi;
fi;
unset doIt;
