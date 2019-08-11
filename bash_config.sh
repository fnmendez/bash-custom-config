folder=~/Bash

alias obash="atom ~/Bash/"
alias sbp="source ~/.bash_profile"

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Direnv
eval "$(direnv hook bash)"

# Thefuck
eval $(thefuck --alias)

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
ja() { j $@ ; atom . ; }

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
