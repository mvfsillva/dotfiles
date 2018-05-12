#!/bin/bash
#
# VScode extensions install
# Add or exclude plugins before installation

source ./install/utils.sh

# from `code --list-extensions`
modules="
    formulahendry.auto-rename-tag
    deerawan.vscode-dash
    EditorConfig.editorconfig
    dbaeumer.vscode-eslint
    file-icons.file-icons
    codezombiech.gitignore
    Zignd.html-css-class-completion
    ritwickdey.liveserver
    zhuangtongfa.material-theme
    esbenp.prettier-vscode
"

for module in $modules; do
  code --install-extension "$module" || true
done

e_success "Success! VSCode is set."
