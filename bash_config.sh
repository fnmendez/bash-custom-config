folder=~/Bash

alias obash="code ~/Bash/"
alias sbp="source ~/.bash_profile"

# Google Drive Go package
alias drive="~/go/bin/drive"

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Thefuck
eval $(thefuck --alias)

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
ja() { j $@ ; code . ; }

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

source $folder/dev.sh
source $folder/git.sh
source $folder/git-prompt.sh
source $folder/git-completion.sh
source $folder/git-completion-aliases.sh
source $folder/snippets.sh
