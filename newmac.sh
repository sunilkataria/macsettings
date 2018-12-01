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

mkdir -p ~/ScreenShots
mkdir -p ~/MyTrash

defaults write com.apple.screencapture location ~/ScreenShots/

killall SystemUIServer


