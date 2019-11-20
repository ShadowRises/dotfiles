#!/bin/sh

if [ -d "$HOME"/.scripts ] && echo "$PATH" | grep -q -v ".scripts"
then

    export PATH="$PATH:$HOME/.scripts"

fi

export VISUAL="vim"
export EDITOR="$VISUAL"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
 
if [ -z "$DISPLAY" ] && [ ! -z "$XDG_VTNR"  ] && [ "$XDG_VTNR" -eq 1 ]
then
    startx
fi
