#!/bin/sh

echo "Checking/Installing Homebrew..."
install=0
if [[ $(uname -m) == 'arm64' ]]; then
    echo "M1"
    if [ ! -d "/opt/homebrew" ]; then
        install=1
    fi
else
    echo "Intel"
    if [ ! -d "/usr/local/Homebrew" ]; then
        install=1
    fi
fi
if [ "$install" == "1" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# echo "Installing homebrew packages..."

# # cli tools
# brew install wget
# #tools for chef dev
# brew install packer
# brew cask install vagrant
# brew tap homebrew/cask-fonts
# brew install git-extras
# brew install dotnet-sdk
# brew install mono
# brew install kubernetes-cli

# # development tools
# brew install git
# brew cask install visual-studio-code

# # terminals cause why not!
# brew cask install iterm2
# brew install hub
# brew install macvim --override-system-vim
# brew install tmux
# brew install zsh
# brew install highlight
# brew install nvm
# brew install markdown
# brew install node
# brew install zsh-syntax-highlighting
# brew install zsh-autosuggestions
# brew install nmap 
# echo "Installing desktop application..."

# brew cask install spotify
# brew cask install slack
# brew cask install virtualbox
# brew cask install iterm2

# echo "Installing neovim..."
# # install neovim
# brew install neovim

# exit 0
