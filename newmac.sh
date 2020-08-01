#!/bin/bash

defaults write com.apple.Dock orientation -string left

killall Dock

cat <<EOF > .bash_profile
PS1='\u \w \$ '
EOF

defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 500

defaults write com.apple.screencapture type jpg
defaults write com.apple.screencapture disable-shadow -bool TRUE

defaults write com.apple.screencapture name "ScreenShot"

#defaults write com.apple.screencapture name "" Revert ScreenShot Settings

# Notifications set to 1 seconds
defaults write com.apple.notificationcenterui bannerTime 1

mkdir -p ~/ScreenShots
mkdir -p ~/MyTrash

defaults write com.apple.screencapture location ~/ScreenShots/

killall SystemUIServer

defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true


defaults write -g NSNavPanelExpandedStateForSaveMode -bool true 
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder QuitMenuItem -bool true

killall Finder
