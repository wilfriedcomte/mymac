#!/bin/bash
# My Installation App script
echo Install Mac App Store apps first.

# Either use mas-cli (https://github.com/argon/mas) or install manually; apps I need: Bear/Simplenote, Tyme, Polarr, Pixelmator, JPEGmini.
read -p "Press any key to continue… " -n1 -s
echo '\n'

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade

# Install my brew packages
brew install wget
brew install zsh
brew install awk
brew install tmux
brew install git
brew install clamav
#brew install mpv

# Install mas-cli
brew install mas
echo "Dashlane installation"
mas install 552383089 # Dashlane
echo "Grammarly for Safari"
mas install 1462114288 # Grammarly for Safari
echo "Microsoft Remote Desktop"
mas install 1295203466
echo "Pages"
mas install 409201541
echo "Numbers"
mas install 409203825
# Install cask
brew tap phinze/homebrew-cask

# Install desired cask packages
brew cask install cakebrew
brew cask install iterm2
brew cask install coconutbattery
brew cask install franz
brew cask install imageoptim
brew cask install the-unarchiver
brew cask install vlc

#brew cask install git
# my daily soft
brew cask install Signal
brew cask install Brave-browser
brew cask install skype-for-business
brew cask install microsoft-teams
brew cask install visual-studio-code
brew cask install openconnect-gui
brew cask install vlc
brew cask install spotify
brew cask install freecad
brew cask install docker
brew cask install discord
