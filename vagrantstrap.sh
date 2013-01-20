#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"
git pull
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "vagrantstrap.sh" --exclude "README.md" -av . /home/vagrant/
}
doIt
unset doIt
source /home/vagrant/.bash_profile