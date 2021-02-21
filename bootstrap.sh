#!/usr/bin/env bash

cd "${dirname "${BASH_SOURCE}"}";


git pull origin main;

function doIt(){
	echo -e "Copying Dotfiles and config to Home location."
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "install-all.sh" \
		--exclude "fonts" \
		--exclude ".git" \
		--exclude ".gitignore" \
		--exclude "bootstrap.sh" \
		--exclude "README.MD" \
		--exclude "LICENSE" \
		--exclude "fonts/" \
		--exclude "installers/" \
		--exclude "update.sh" \
		-avh --no-perms . ~;
	source ~/.zshrc;
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
