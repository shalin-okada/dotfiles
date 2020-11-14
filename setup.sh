#!/bin/bash

# 隠しファイルを常にファインダーに表示する
defaults write com.apple.finder AppleShowAllFiles -bool YES
killall Finder

# 全ての拡張子のファイルを表示する
defaults write -g AppleShowAllExtensions -bool true

# タップしたときクリック
defaults write -g com.apple.mouse.tapBehavior -int 1

# 三本指でドラッグ
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true && \
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false 

# ダウンロードしたファイルを開くときの警告ダイアログをなくしたい
defaults write com.apple.LaunchServices LSQuarantine -bool false

# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# brew upgradeの自動化
cp ./localhost.homebrew-upgrade.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/localhost.homebrew-upgrade.plist

# configの配置
mkdir ~/.config
cp ./com.googlecode.iterm2.plist ~/.config
co ./starship.toml ~/.config
mkdir ~/.config/brewfile
cp ./Brewfile ~/.config/brewfile
mkdir ~/.config/fish
cp ./config.fish ~/.config

# brewの設定
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle

# gitの設定
git config --global user.name "Shalin Okada"
git config --global user.email shalinokada@gmail.com

# fishの設定
sudo echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish

# フォントのダウンロード
curl -O https://gist.github.com/baopham/1838072/raw/616d338cea8b9dcc3a5b17c12fe3070df1b738c0/Monaco%2520for%2520Powerline.otf
echo "フォントをインストールしてください"
