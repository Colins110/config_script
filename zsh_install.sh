#!/bin/bash

cd ~

sudo apt install zsh
sudo apt install autojump
sudo apt install zsh-autosuggestions
sudo apt install zsh-syntax-highlighting

mkdir .zshCustom
pushd .zshCustom
mkdir plugins
mkdir themes
pushd themes
git git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
popd
popd

chsh -s /bin/zsh