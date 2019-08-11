repository=fnmendez
function git_clean_commit() {
  git commit -m "$(echo $'\n'"$*" | tr . \\n | tr - ' ')"
}
function git_super_commit() {
  git add -A
  git commit -m "$*"
  git push
}
function git_remote_add_push() {
  git remote add origin https://github.com/$repository/"$*".git
  git push -u origin master
}
function git_super_init() {
  echo ".DS_Store*" >> .gitignore
  git init
  git remote add origin https://github.com/$repository/"$*".git
  git add -A
  git commit -m "Initialize repository"
  git push -u origin master
}
function git_add_recursive() {
  git add "./*$1*"
}
function git_diff_recursive() {
  git diff "./*$1*"
}
function git_reset_head_recursive() {
  git reset HEAD "./*$1*"
}
function git_checkout_file_recursive() {
  git checkout -- "./*$1*"
}
function git_open_remote() {
  url=$(git config --get remote.origin.url)
  open $url
}
function git_open_remote_all() {
  for folder in $(ls -d */); do
    cd $folder
    url=$(git config --get remote.origin.url)
    open $url
    cd ..
  done
}
function git_merge_squash() {
  git merge --squash "$1"
  shift
  git commit -m "$(echo $'\n'"$*" | tr . \\n | tr - ' ')"
}
alias grap=git_remote_add_push
alias gmrs=git_merge_squash
alias gdr=git_diff_recursive
alias gar=git_add_recursive
alias gsi=git_super_init
alias gsc=git_super_commit
alias gcm=git_clean_commit
alias gi="git init"
alias gs="git status"
alias ga="git add"
alias gal="git add -A"
alias gcml="git add -A && git commit -m"
alias grh="git reset HEAD"
alias grhr=git_reset_head_recursive
alias grhh="git reset HEAD --hard"
alias gcl="git clean -fd"
alias gb="git branch"
alias gbd="git branch -d"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcf="git checkout --"
alias gcfr=git_checkout_file_recursive
alias gd="git diff"
alias gdh="git diff HEAD"
alias gps="git push"
alias gpl="git pull --rebase"
alias gl="git log --oneline"
alias gst="git stash"
alias gmr="git merge"
alias grp="git remote prune origin"
alias gor=git_open_remote
alias gors=git_open_remote_all
alias gbm="git branch -m"
alias gcln="git clone"
