#!/bin/bash
#
# npm packages
# Add or exclude packages before installation

source ./install/utils.sh

if which node &> /dev/null; then
  brew install node
fi

# Packages
npm install -g create-react-app
npm install -g http-server
npm install -g gulp-cli
npm install -g eslint

#Finish
e_success "Finished the npm packages installation"
