# .bash_profile

# Exports
PATH="${HOME}/.local/bin${PATH:+:${PATH}}"
export EDITOR="nvim"
export TERM="alacritty"
export HISTCONTROL=ignoredups:erasedups
export BROWSER="firefox"
export PDF="evince"
export IMAGE="feh"
export VIDEO="mpv"

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc


if [ "$(tty)" = "/dev/tty1" ]; then
  pgrep -x bspwm || exec startx ${HOME}/.config/X11/xinitrc
fi

