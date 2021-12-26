#!/bin/bash

# configの配置
cp .gitconfig ~/.gitconfig
mkdir ~/.config
mkdir ~/.config/iterm2
mkdir ~/.config/fish
cp ./com.googlecode.iterm2.plist ~/.config/iterm2
cp ./starship.toml ~/.config
cp ./config.fish ~/.config


# brewの設定
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle

# fishの設定
sudo echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish
