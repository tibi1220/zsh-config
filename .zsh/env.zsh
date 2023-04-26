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
PATH="/opt/homebrew/bin${PATH+:$PATH}"
PATH="/opt/homebrew/sbin${PATH+:$PATH}"
PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
PATH="$PATH:$ZDOTDIR/scripts"

# Code editors
export EDITOR=nvim
export VISUAL=code
