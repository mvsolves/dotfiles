#!/bin/bash

# Prompt user that Homebrew will be installed
read -p "This script will install Homebrew on your system. Do you want to proceed? (y/n): " choice

if [[ $choice == "y" ]]; then
    echo "Installing Brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew analytics off
else
    echo "Installation aborted."
    exit
fi











# Check if Zsh is installed
if ! [ -x "$(command -v zsh)" ]; then
  read -p "Zsh is not installed. Would you like to install it with Homebrew? [y/n] " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    brew install zsh
    echo "Zsh installation complete."

    # Prompt user if they want to set Zsh shell
    read -p "Would you like to set Zsh as the default shell? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      if [ -x "$(command -v chsh)" ]; then
        chsh -s /usr/local/bin/zsh
      else
        echo "Unable to set default shell to Zsh. Please set it manually."
      fi
    else
      echo "Zsh set as default shell skipped."
    fi
  else
    echo "Zsh installation skipped."
  fi
fi













# Install neovim, tmux,pyenv, ripgrep
read -p "Do you want to install the following core packages: neovim, tmux, pyenv, and ripgrep? (y/n): " choice
case "$choice" in
  y|Y ) 
    brew install neovim
    brew install tmux 
    brew install pyenv
    brew install ripgrep
    ;;
  n|N ) echo "No packages installed.";;
  * ) echo "Invalid input. No packages installed.";;
esac
















# OPTIONAL: MacOs specific brew packages
read -p "Do you want to install the following MacOS packages: keychain, skhd, yabai, and blackhole-2ch? (y/n): " choice
case "$choice" in
  y|Y ) 
    brew tap koekeishiya/formulae
    brew install keychain
    brew install koekeishiya/formulae/skhd
    brew install koekeishiya/formulae/yabai
    brew install --cask blackhole-2ch

		# Start Services
		echo "Starting Services (grant permissions)..."
		brew services start skhd
		brew services start yabai
    ;;
  n|N ) echo "No packages installed.";;
  * ) echo "Invalid input. No packages installed.";;
esac
