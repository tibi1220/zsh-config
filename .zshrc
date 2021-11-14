#!/bin/zsh
HISTFILE=~/.zsh_history
setopt appendhistory

# Allow interactive comments
setopt interactive_comments

# Tab into ls completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# History navigation
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/.zsh_functions"
zsh_add_file ".zsh_exports"

zsh_source_custom

zsh_add_file ".zsh_aliases"
zsh_add_file ".zsh_prompt"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

# zsh_add_plugin "marlonrichert/zsh-autocomplete"
