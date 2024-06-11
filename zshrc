export EDITOR=lvim
export ZSH="$HOME/.oh-my-zsh"
export PATH=/Users/bradfeeley/.local/bin:$PATH

ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode disabled
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=()
source $ZSH/oh-my-zsh.sh
source $ZSH/aliases.sh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }
[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)
