#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

echo zsh >> ~/.bashrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed -i 's/^plugins=(git)$/plugins=(git zsh-syntax-highlighting)/g' ~/.zshrc

mc mirror s3/rolland ~/
