#!/usr/bin/env zsh

# Custom directories for zsh
export ZSH_CUSTOM_PLUGINS=$ZDOTDIR/custom/plugins
export ZSH_PLUGINS=$ZDOTDIR/plugins
export ZSHRC=$ZDOTDIR/.zshrc

# brew generated code
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:"
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"

# Export path
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/theos/bin"
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Code editors
export EDITOR=nvim
export VISUAL=nvim
