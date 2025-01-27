#!/bin/bash
#
# Install Homebrew and applications
# Check out https://brew.sh for more details
# Comment (with #) what should not be installed and add the applications you want to install.

source ./scripts/utils.sh

echo_info "Installing apps..."

# Install Rosetta for Apple Silicon hardware
if [[ `uname -p` == 'arm' ]]; then
  softwareupdate --install-rosetta --agree-to-license
fi

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Install Homebrew taps
TAPS=(
  homebrew/cask-drivers
  homebrew/cask-fonts
  homebrew/cask-versions
  homebrew/command-not-found
)

for tap in ${TAPS[@]}
do
  brew tap $tap
done

# Install Homebrew formulas
FORMULAS=(
  curl
  git
  vim
  node
  postgresql
  python
  ruby
  tree
  unar
  yarn
  zsh
)

for formula in ${FORMULAS[@]}
do
  brew install $formula
done

# Install Homebrew casks
CASKS=(
  docker
  font-jetbrains-mono
  google-chrome
  iina
  openinterminal
  pdf-expert
  tableplus
  visual-studio-code
  notion
  zoom
  firefox
  fig
  coconutbattery
  figma
  dbeaver-community
  spark
  runjs
  slack
  reactotron
  rectangle
  iterm2
  spotify
)

for app in ${CASKS[@]}
do
  brew install --cask $app
done

# Install Homebrew Cask Upgrade
# Check out https://github.com/buo/homebrew-cask-upgrade for more details
brew tap buo/cask-upgrade
brew update
brew cu

# Finish
echo_success "Finished applications installation."
