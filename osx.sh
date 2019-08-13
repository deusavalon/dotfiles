#!/bin/bash
echo "==> Running osx.sh"

# Keyboard
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

# Mouse
defaults write NSGlobalDomain com.apple.mouse.scaling 1.5
defaults write com.apple.AppleMultitouchMouse MouseButtonMode -string TwoButton

# Trackpad
defaults write NSGlobalDomain com.apple.trackpad.scaling 1.5

# Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable Touch Bar typing suggestions
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false

# Touch Bar shows expanded control strip
defaults write com.apple.touchbar.agent PresentationModeGlobal fullControlStrip

# Disable floating screenshot thumbnail
defaults write com.apple.screencapture show-thumbnail -bool FALSE
