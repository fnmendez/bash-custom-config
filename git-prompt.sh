source "$(brew --prefix)/opt/bash-git-prompt/share/prompt-colors.sh"

# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=0

# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

# GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

GIT_PROMPT_START="${Yellow}\W${ResetColor}"    # uncomment for custom prompt start sequence
GIT_PROMPT_END="${White}\n$ ${ResetColor}"      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
GIT_PROMPT_THEME_FILE=~/Bash/git-prompt-colors.sh
# GIT_PROMPT_THEME='Solarized_Extravagant' # use theme optimized for solarized color scheme

__GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"

# Colors
# ColorNames=( Black Red Green Yellow Blue Magenta Cyan White )
# Modifiers: Bold Dim Bright
# Options: Foreground (Fg) Background (Bg)
