#!/usr/bin/env zsh

# Source changes without opening a new terminal window
function reload() {
  source "$ZDOTDIR/.zshrc"
}

alias zsh-reload='reload'

# Function to source non cloned plugins
function zsh_source_custom() {
  for f in $ZSH_CUSTOM_PLUGINS/**/*.plugin.zsh; do source $f; done
}

function zsh_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)

  if [ -d "$ZSH_PLUGINS/$PLUGIN_NAME" ]; then
    # If plugin is already cloned, source it
    source "$ZSH_PLUGINS/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh"
  else

    git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
  fi
}

function zsh_add_completion() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then
    # For completions
    completion_file_path=$(ls $ZDOTDIR/plugins/$PLUGIN_NAME/_*)
    fpath+="$(dirname "${completion_file_path}")"
    source "$ZSH_PLUGINS/$PLUGIN_NAME.plugin.zsh"
  else
    git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
    fpath+=$(ls $ZDOTDIR/plugins/$PLUGIN_NAME/_*)
    [ -f $ZDOTDIR/.zccompdump ] && $ZDOTDIR/.zccompdump
  fi
  completion_file="$(basename "${completion_file_path}")"
  if [ "$2" = true ]; then
    compinit "${completion_file:1}"
  fi
}
