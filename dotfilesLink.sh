#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0); pwd)

ln -sf ${SCRIPT_DIR}/.spacemacs ~/.spacemacs
ln -sf ${SCRIPT_DIR}/.gitignore ~/.gitignore
ln -sf ${SCRIPT_DIR}/.tmux.conf ~/.tmux.conf
ln -sf ${SCRIPT_DIR}/.zshrc ~/.zshrc
ln -sf ${SCRIPT_DIR}/.zshenv ~/.zshenv
ln -sf ${SCRIPT_DIR}/.gitconfig ~/.gitconfig
ln -sf ${SCRIPT_DIR}/.tmux ~/.tmux
ln -sf ${SCRIPT_DIR}/.skhdrc ~/.skhdrc
ln -sf ${SCRIPT_DIR}/.chunkwmrc ~/.chunkwmrc
ln -sf ${SCRIPT_DIR}/.chunkwm_plugins ~/.chunkwm_plugins
ln -sf ${SCRIPT_DIR}/alacritty.yml ~/.config/alacritty/alacritty.yml
