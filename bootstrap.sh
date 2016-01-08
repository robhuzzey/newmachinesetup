#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
function doIt() {
	mkdir ~/.vim;
	rsync --exclude ".git/" --exclude ".DS_Store" -av --no-perms ./homedirfiles/ ~
	chmod +x ~/.rip # special case, this file needs permissions
  chmod +x ~/.mountvm # special case, this file needs permissions
  chmod +x ~/.unmountvm # special case, this file needs permissions
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile
