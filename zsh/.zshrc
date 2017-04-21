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

