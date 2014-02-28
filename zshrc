# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#DEFAULT##ZSH_THEME="robbyrussell"
#ZSH_THEME="muse"
#ZSH_THEME="powerline"
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting 
# terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command 
# autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed 
# while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked 
# files under VCS as dirty. This makes repository status check for 
# large repositories much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in 
# ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#DEFAULT#plugins=(git)
plugins=(git brew jira screen vagrant web-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/Users/adam/bin:/usr/local/bin:/opt/X11/bin:/opt/boxen/nodenv/bin:/usr/local/MacGPG2/bin"

# rbenv init
#export PATH="/Users/adam/.rbenv/shims:${PATH}"
#source "/usr/local/Cellar/rbenv/0.4.0/libexec/../completions/rbenv.zsh"
#rbenv rehash 2>/dev/null
#rbenv() {
#  typeset command
#  command="$1"
#  if [ "$#" -gt 0 ]; then
#    shift
#  fi
#
#  case "$command" in
#  rehash|shell)
#    eval `rbenv "sh-$command" "$@"`;;
#  *)
#    command rbenv "$command" "$@";;
#  esac
#}

# Fix our lscolors:
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# This comes from the curl-ca-bundle brew package
export SSL_CERT_FILE=/opt/boxen/homebrew/share/ca-bundle.crt

# add our boxen stuff
source /opt/boxen/env.sh

# Set up java
export JAVA_HOME=$(/usr/libexec/java_home)

export ENVPUPPET_BASEDIR=/Users/adam/sandbox
#alias puppet='~/sandbox/puppet/ext/envpuppet puppet'
#alias facter='~/sandbox/puppet/ext/envpuppet facter'
#alias irb='~/sandbox/puppet/ext/envpuppet irb'

if [ -f ~/.local.zshrc ]; then
  source ~/.local.zshrc
fi
  
