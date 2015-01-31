#!/usr/bin/env bash

which -s brew
if [[ $? != 0 ]] ; then
	# Install Homebrew: http://brew.sh
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	brew update
fi
which -s ansible
if [[ $? != 0 ]] ; then
	# Install Ansible Frome Homebrew
	echo Installing Ansible with Homebrew
	brew install ansible
else
	echo Ansible already installed
fi

ansible-playbook -i hosts.yml  osx_playbook.yml --connection=local --ask-sudo-pass
