# Starship
starship init fish | source

# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
source (rbenv init -|psub)

# nodenv
set -x PATH $HOME/.nodenv/bin $PATH
source (nodenv init -|psub)

# homebrew
set PATH $PATH /opt/homebrew/bin

# starship
starship init fish | source

# nodenv
set -x PATH $HOME/.nodenv/bin $PATH
source (nodenv init -| source)

# ghq

set GHQ_SELECTOR peco

# peco

set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths

set -x PKG_CONFIG_PATH /opt/homebrew/Cellar/zlib/1.2.11/lib/pkgconfig ./configure

# direnv
set -x EDITOR vi
direnv hook fish | source

set -x PATH /opt/homebrew/sbin $PATH


