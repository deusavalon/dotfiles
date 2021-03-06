#!/bin/bash
echo "==> Running bootstrap.sh"

# echo "Updating OSX..."
# sudo softwareupdate --install --all --verbose

# echo "Installing Xcode command line tools..."
# touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
# CMD_LINE_TOOLS=$(softwareupdate -l | grep "\*.*Command Line" | tail -n 1 | awk -F"*" '{print $2}' | sed -e 's/^ *//' | tr -d '\n')
# sudo softwareupdate -i "$CMD_LINE_TOOLS" --verbose
# rm /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
# xcode-select --install

echo "Cloning dotfiles repo..."
mkdir -p ~/Projects/personal
cd ~/Projects/personal
git clone https://github.com/deusavalon/dotfiles.git
cd dotfiles


# Installs
./install.sh

# Defaults + Dockutil configuration
./osx.sh

# Symlinks
./symlinks.sh

# SSH permissions
./ssh.sh