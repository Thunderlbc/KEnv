#!/bin/bash
source utils/shutils.sh

# 1. install zsh using yum

CHECK sudo yum install zsh -y

# 2. copy all configs to $HOME

CHECK_EMPTY_VAR $HOME

CHECK cp -r confs/zsh/oh-my-zsh $HOME/.oh-my-zsh
CHECK cp -r confs/zsh/zshrc $HOME/.zshrc
