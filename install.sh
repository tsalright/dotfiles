#! /bin/bash

echo "Installing dotfiles"
source install/link.sh

echo "Initializing submodule(s)"
git submodule update --init --recursive

if [ "$(uname)" == "Darwin" ]; then
    echo "Running on OSX"
    source install/brew.sh
    echo "Install Ansible..."
    /opt/homebrew/bin/brew install ansible
    echo "Configuring Mac..."
    /opt/homebrew/bin/ansible-playbook tsalright-macos/playbook.yml
fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp

echo "Done."
