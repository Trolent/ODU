#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

mc mirror s3/rolland ~/
