# Path to your oh-my-zsh installation.
export ZSH=/Users/z0022g1/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting nvm vi-mode)


source $ZSH/oh-my-zsh.sh


export GRADLE_HOME=~/Development/tools/gradle-2.13

export PATH=$PATH:$GRADLE_HOME/bin:$HOME/bin


# crtl-r history
bindkey '^r' history-incremental-search-backward

## From https://www.topbug.net/blog/2016/09/27/make-gnu-less-more-powerful/
#export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'
# or the short version
export LESS='-F -i -J -M -R -W -x4 -X -z-4'

# Set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Set the Less input preprocessor.
if type lesspipe.sh >/dev/null 2>&1; then
   export LESSOPEN='|lesspipe.sh %s'
fi


#NVM
export NVM_DIR="/Users/z0022g1/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# K8s
source <(kubectl completion zsh)
alias kk=kubectl

#==========================================================================
# DRONE ENVIRONMENT VARS
#==========================================================================
export DRONE_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0IjoiQ2hyaXNTdGFkbGVyIiwidHlwZSI6InVzZXIifQ.zkBGkqDMbGssUn4yW48loeO86PzgJGcQF5xpzfP--_s
export DRONE_SERVER=https://drone5.target.com

#==========================================================================
# LOCAL DEV ENVIRONMENT VARS
#==========================================================================
source /Users/z0022g1/Development/repos/kubernetes/secrets/ima/local/env.sh

#==========================================================================
# K8S DEPLOYMENT SECRETS
#==========================================================================
export CONFIG_SECRETS=/Users/z0022g1/Development/repos/kubernetes/secrets

