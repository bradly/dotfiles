# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

alias add='git add'
alias branch='git branch'
alias checkout='git checkout'
alias cherry-pick='git cherry-pick'
alias commit='git commit'
alias d='git diff'
alias fetch='git fetch'
alias log="git log -n 20 --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias push='git push'
alias rebase='git rebase'
alias reset='git reset'
alias s='git status'
alias show='git show'
alias stash='git stash'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
