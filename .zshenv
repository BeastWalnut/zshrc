#!/usr/bin/env zsh

# +–––––––––+
# | OPTIONS |
# +–––––––––+

setopt nounset

# +––––––––––+
# | XDG DIRS |
# +––––––––––+

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_HOME="$HOME/.local/share"

# +–––––––––––+
# | VARIABLES |
# +–––––––––––+

export SHELL="$(which zsh)"

# History
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=1000
export SAVEHIST=1000
