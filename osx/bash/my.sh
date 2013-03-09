
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#  . `brew --prefix`/etc/bash_completion
#fi

# TODO boxen module
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# short version for:
# if [ -f "/opt/boxen/env.sh" ] ;
#   then source "/opt/boxen/env.sh"
# fi
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

GIT_PS1_SHOWDIRTYSTATE=true
#export GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=true

# simple prompt
#PS1="\w $ "
#PS1="$Cyan\w$Color_Off \$ "
# git prompt
#PS1='\u@\h $(__git_ps1 "(%s) ")\w \$ '
PROMPT_COMMAND='__git_ps1 "$Cyan\u@\h$Color_Off \w" " \\\$ "'