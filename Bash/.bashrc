#!/bin/bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"


. "$XDG_CONFIG_HOME/aliasrc"

# GPG Agent
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null


# To activate z
[ -r "/usr/share/z/z.sh" ] && source /usr/share/z/z.sh

eval "$(thefuck --alias)"


if [ -n "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]
then

    cirnosay-script

fi
