#!/bin/bash
#
# Install Homebrew and applications
# Check out https://brew.sh for more details
# Comment (with #) what should not be installed and add the applications you want to install.

source ./install/utils.sh
keep_sudo_alive

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install Homebrew formulaes
brew install bash
brew install git
brew install nano
brew install node
brew install nvm
brew install python
brew install ruby
brew install unrar
brew install yarn

# Install Homebrew cask fonts
brew tap caskroom/fonts
brew tap caskroom/drivers
brew tap caskroom/versions

# Install Homebrew casks
brew cask install adguard
brew cask install adobe-creative-cloud
brew cask install dash
brew cask install font-fira-code
brew cask install google-chrome
brew cask install iina
brew cask install istat-menus
brew cask install iterm2
brew cask install paragon-ntfs
brew cask install pdf-expert
brew cask install qbittorrent
brew cask install spotify
brew cask install visual-studio-code

# Install Homebrew Cask Upgrade
# Check out https://github.com/buo/homebrew-cask-upgrade for more details
brew tap buo/cask-upgrade
brew update
brew cu

# VScode extension Settings Sync install
code --install-extension "shan.code-settings-sync"

# Finish
e_success "Finished applications installation."