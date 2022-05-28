# Settings for third-party apps

## NordVPN
defaults write com.nordvpn.osx-apple  appIcon -int 1
defaults write com.nordvpn.osx-apple  helpUsImprove -bool false
defaults write com.nordvpn.osx-apple  cyberSec -bool true
defaults write com.nordvpn.osx-apple didShowPresetsIntro -bool true
defaults write com.nordvpn.osx-apple didShowMFAOnboarding -bool true
defaults write com.nordvpn.osx-apple helpUsImprove -bool false

## Duet Display
defaults write com.kairos.duetMac LaunchAtLogin -bool false
defaults write com.kairos.duetMac FirstLaunch -bool false
defaults write com.kairos.duetMac "Enable Air" -bool false
defaults write com.kairos.duetMac ForceHighPerformanceGPU -bool true

## Amphetamine
defaults write com.if.Amphetamine "Enable Statistics" -bool false

## PDF Expert
defaults write com.readdle.PDFExpert-Mac gettingStartedGuideWasShown -bool false
defaults write com.readdle.PDFExpert-Mac shouldShowPrivacyPolicy -bool false
defaults write com.readdle.PDFExpert-Mac introFlowWasShown -bool false

## Reeder 5
defaults write com.reederapp.5.macOS "app.grayscale-favicons" -int 1
defaults write com.reederapp.5.macOS "app.icon-badge" -int 2
defaults write com.reederapp.5.macOS "app.layout" -int 0

## Keka
defaults write com.aone.keka ZipUsingAES -bool true
defaults write com.aone.keka DefaultFormat -string ZIP
defaults write com.aone.keka FinderAfterCompression -bool true
defaults write com.aone.keka FinderAfterExtraction -bool true
defaults write com.aone.keka KekaAskBeforeCancel -bool true
defaults write com.aone.keka SetAsDefaultApp -bool true

## Open in Terminal Lite
defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal -string iTerm

## Turbo Boost Switch Pro
defaults write rugarciap.com.Turbo-Boost-Switcher-Pro-Pro disableAtLaunch -bool true
defaults write rugarciap.com.Turbo-Boost-Switcher-Pro-Pro isMonitoringEnabled -bool true
defaults write rugarciap.com.Turbo-Boost-Switcher-Pro-Pro isTurboBoostDisabledNotification -bool false
defaults write rugarciap.com.Turbo-Boost-Switcher-Pro-Pro isTurboBoostEnabledNotification -bool true

## Cot



