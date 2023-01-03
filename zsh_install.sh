#!/bin/bash

cd ~

sudo apt install zsh
sudo apt install autojump
sudo apt install zsh-autosuggestions
sudo apt install zsh-syntax-highlighting

mkdir .zshCustom
pushd .zshCustom
mkdir plugins
pushd plugins
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
popd

mkdir themes
pushd themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
popd
popd

chsh -s /bin/zsh