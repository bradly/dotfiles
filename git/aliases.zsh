# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

alias add='git add'
alias bisect='git bisect'
alias branch='git branch'
alias checkout='git checkout'
alias cherry-pick='git cherry-pick'
alias clone='git clone'
alias commit='git commit'
alias d='git diff'
alias diff='git diff'
alias fetch='git fetch'
alias log="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias merge='git merge'
alias pull='git pull'
alias push='git push'
alias rebase='git rebase'
alias reset='git reset'
alias revert='git revert'
alias reflog='git reflog'
alias show='git show'
alias stash='git stash'
alias s='git status'
alias status='git status'
alias tag='git tag'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
