# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh_custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#DEFAULT##ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="adam"

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
plugins=(git brew jira screen vagrant web-search bundler chucknorris)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/Users/adamc/bin:/usr/local/bin:/opt/X11/bin:/opt/boxen/nodenv/bin:/opt/boxen/homebrew/bin/strfile:/usr/local/MacGPG2/bin:/Users/adamc/bin/google-cloud-sdk/bin"

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
#export SSL_CERT_FILE=/opt/boxen/homebrew/share/ca-bundle.crt

# add our boxen stuff
source /opt/boxen/env.sh

# Set up java
export JAVA_HOME=$(/usr/libexec/java_home)

export ENVPUPPET_BASEDIR=/Users/adamc/sandbox
eval $($ENVPUPPET_BASEDIR/puppet/ext/envpuppet)
#alias puppet='~/sandbox/puppet/ext/envpuppet puppet'
#alias facter='~/sandbox/puppet/ext/envpuppet facter'
#alias irb='~/sandbox/puppet/ext/envpuppet irb'

# Gam stuff
alias pd-gam=python\ ~/gam/pd-gam-3.42/gam.py
alias mfe-gam=python\ ~/gam/mfe-gam-3.42/gam.py

function myip () {
  curl -s icanhazip.com
}

function clean_chrome () {
  app="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
  (
    td=`mktemp -d /tmp/chrome.tmp.XXXX`
    ${app} --user-data-dir=${td} > /dev/null 2>&1;
    rm -r ${td}
  ) &
}

# Bundler stuff
#alias be="bundle exec"
#alias buni="bundle install"

#export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375

export LESS='-FRSX'

if [ -f ~/.local.zshrc ]; then
  source ~/.local.zshrc
fi

if [ -f ~/.iterm2_shell_integration.zsh ]; then
  source ~/.iterm2_shell_integration.zsh
fi
