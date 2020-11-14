# Starship
starship init fish | source

# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
source (rbenv init -|psub)

# nodenv
set -x PATH $HOME/.nodenv/bin $PATH
source (nodenv init -|psub)
