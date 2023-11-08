#!/bin/bash

echo "alias ls='ls --color=auto'" >> ~/.zshrc

echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/autojump/autojump.zsh
source /home/colin/.zshCustom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

source /home/colin/.zshCustom/themes/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
