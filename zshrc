export EDITOR=lvim
export ZSH="$HOME/.oh-my-zsh"
export PATH=~/.local/bin:$PATH

ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode disabled
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=()
source $ZSH/oh-my-zsh.sh
source $ZSH/aliases.sh

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

local_config_path="$1.local"
[[ -f $local_config_path ]] && source $local_config_path
