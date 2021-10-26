#!/bin/bash

#Enable startup chime on Mac
sudo nvram StartupMute=%00

# Finder
## Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

## Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

## Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

## Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

## Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

##  Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#  External Disk Management
## Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

## Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

## Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Dock
## Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 32

## Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

## Show only open applications in the Dock
defaults write com.apple.dock static-only -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Disable Magnification
defaults write com.apple.dock magnification -bool false

## Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# Security
## Destroy Filevault keys on standby
sudo pmset -a destroyfvkeyonstandby 1
sudo pmset -a hibernatemode 25

sudo pmset -a powernap 0
sudo pmset -a standby 0
sudo pmset -a standbydelay 0
sudo pmset -a autopoweroff 0

## Disable Captive Portal
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -bool false

## Disable remote apple events
sudo systemsetup -setremoteappleevents off

## Disable remote login
sudo systemsetup -setremotelogin off

## Disable wake-on modem
sudo systemsetup -setwakeonmodem off

## Disable wake-on LAN
sudo systemsetup -setwakeonnetworkaccess off

## Do not show password hints
sudo defaults write /Library/Preferences/com.apple.loginwindow RetriesUntilHint -int 0

## Disable guest account login
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

##  Disable diagnostic reports
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.SubmitDiagInfo.plist

# Trackpad and Mouse
## Enable Tap to Click on Trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

## Enable two buttons and left-handed Magic Mouse
defaults write com.apple.AppleMultitouchMouse MouseButtonMode -string TwoButtonSwapped

## Set Magic Mouse gestures
defaults write com.apple.AppleMultitouchMouse MouseOneFingerDoubleTapGesture -int 0
defaults write com.apple.AppleMultitouchMouse MouseTwoFingerDoubleTapGesture -int 3
defaults write com.apple.AppleMultitouchMouse MouseTwoFingerHorizSwipeGesture -int 2
defaults write com.apple.AppleMultitouchMouse MouseVerticalScroll -int 1
defaults write com.apple.AppleMultitouchMouse UserPreferences -int 1

# Siri
defaults write com.apple.Siri  StatusMenuVisible -bool false
