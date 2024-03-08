# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# PS1
PS1="[\u@\w]\\$ \[$(tput sgr0)\]"

# shopt
shopt -s histappend
shopt -s checkwinsize

# lffonts
if [ -e ${HOME}/.config/lf/lffonts ]; then
  source ${HOME}/.config/lf/lffonts
fi

set -o vi

### ALIAS ###

#xbps
alias Install="sudo xbps-install"
alias Update="sudo xbps-install -Su && sudo xbps-remove -Oo "
alias Query="xbps-query"
alias q="exit"

#Bluetooth
alias BlueReset="sudo sv restart bluetoothd"

#infos
alias Pkg="xbps-query -l | grep -c ''"

#Colors
alias ls='ls --color=auto'
alias grep="grep --color=auto"

#wpa_cli
alias Nlist='wpa_cli list_network'
alias Nenable='wpa_cli enable_network $@'
