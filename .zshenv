export CLICOLOR=1
export EDITOR=code
export GREP_OPTIONS='--color=auto'

alias htop='sudo htop'
alias sl='ls'

alias gadd='git add'
alias gbr='git branch'
alias gbra='git branch -a'
alias gbs='git bisect'
alias gci='git commit'
alias gcia='git commit -a'
alias gco='git checkout'
alias gcom='git checkout master'
alias gdiff='git diff'
alias ggrep='git grep'
alias glog='git log'
alias gmrg='git merge'
alias gmv='git mv'
alias gpull='git pull'
alias gpush='git push'
alias grb='git rebase'
alias grbo='git rebase --onto'
alias greset='git reset'
alias grm='git rm'
alias gshow='git show'
alias gst='git status'
alias gsub='git submodule'
alias gup='git pull'

function grbon {
  grbo $1 HEAD~$2
}

function grbo1 {
  grbon $1 1
}

function grbo2 {
  grbon $1 2
}

function gbdiff {
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative ${1}..${2}
}

# Superpowered git log
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
