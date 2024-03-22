# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="awesomepanda" #robbyrussell

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Comment the following line to hide the red dots shown while waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

alias v="nvim"
alias speed="speedtest-cli"
alias c="clear"
alias wifipass="security find-generic-password -wa"
alias geoip='curl "https://api.geoiplookup.net/?query="$1"&json=true" | json_pp'
alias ai="ollama run mistral:7b-instruct-q5_0"

# Adds Homebrew to Path
# Add Homebrew's executable directory to the front of the PATH
export PATH=/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export OP_DEVICE=""
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/Users/ryan.wittmers/development/flutter/bin:$PATH"
# pnpm
export PNPM_HOME="/Users/ryan.wittmers/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
