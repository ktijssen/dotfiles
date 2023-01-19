#!/bin/bash

# Update package list
sudo apt-get update

# Install zsh and git
sudo apt-get install zsh git curl -y

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Starship prompt
curl -fsSL https://starship.rs/install.sh | sh

# Set zsh as default shell
chsh -s $(which zsh)
