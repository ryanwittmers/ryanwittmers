# If you come from bash, you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set the theme for oh-my-zsh (alternatively use "random" for random themes).
ZSH_THEME="awesomepanda"  # You can also switch back to "robbyrussell" if needed

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change the auto-update behavior
# zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Plugins to load with oh-my-zsh
plugins=(git zsh-syntax-highlighting)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# ---- User Configuration ----

# Aliases (optimized for readability)
alias v="nvim"                               # Open Neovim
alias speed="speedtest-cli"                  # Run internet speed test
alias c="clear"                              # Clear the terminal
alias wifipass="security find-generic-password -wa"  # Show WiFi password
alias cssample="echo crowdstrike_sample_detection"   # Sample alias for CrowdStrike
alias block-ip="python3 ~/Desktop/miscellaneous/Python_Scripts/autoblock-ip/public/autoblock-ip.py"
alias geoip='curl "https://api.geoiplookup.net/?query="$1"&json=true" | json_pp'
alias ai="ollama run llama3"                 # Run AI commands
alias ip="ipconfig getifaddr en0"            # Get local IP address
alias gamadv="~/bin/gamadv-xtd3/gam"         # GAM advanced
alias gam="~/bin/gamadv-xtd3/gam"            # GAM basic

# ---- Environment Setup ----

# Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# pnpm (package manager)
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# bun (JavaScript runtime)
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"  # bun completions

# Python-related tools (pipx)
export PATH="$HOME/.local/bin:$PATH"

# GAM configuration
export GAMCFGDIR="$HOME/GAMConfig"

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# Add Flutter SDK to the PATH
export PATH="$HOME/development/flutter/bin:$PATH"

# ---- End of User Configuration ----
