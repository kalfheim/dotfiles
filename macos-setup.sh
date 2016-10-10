#!/usr/bin/env bash

# Stop iTunes from Responding to Key Presses
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# Sketch: Export Compact SVGs
defaults write com.bohemiancoding.sketch3 exportCompactSVG -bool yes

# Install Command Line Tools without Xcode
# xcode-select --install

# Dock: Add a Space
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

# Play iOS charging sound when MagSafe is connected
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true && \
open /System/Library/CoreServices/PowerChime.app

# Finder: Show the Path Bar
defaults write com.apple.finder ShowPathbar -bool true
# Icon Size Small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Disable Auto-Correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
