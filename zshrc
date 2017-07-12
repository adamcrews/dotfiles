# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh_custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#DEFAULT##ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

# datetime & stat are needed by the adam theme
zmodload zsh/datetime
zmodload zsh/stat
ZSH_THEME="adam"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=5

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

# Enable thefuck press ESC 2x to use
eval "$(thefuck --alias)"

# Which plugins would you like to load? (plugins can be found in 
# ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew jira screen vagrant web-search bundler chucknorris thefuck rake-fast rbenv docker asdf nodenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH="/opt/boxen/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/adamc/bin:/usr/local/bin:/opt/X11/bin:/opt/boxen/nodenv/bin"
export PATH="/opt/boxen/homebrew/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/adamc/bin:/usr/local/bin:/opt/X11/bin"

# Fix our lscolors:
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# add our boxen stuff
source /opt/boxen/env.sh

# Set up java
export JAVA_HOME=$(/usr/libexec/java_home)

#export ENVPUPPET_BASEDIR=/Users/adamc/sandbox
#eval $($ENVPUPPET_BASEDIR/puppet/ext/envpuppet)

function myip () {
  curl -s icanhazip.com
}

export LESS='-FRSX'

# Direnv
type direnv > /dev/null 2>&1 && eval "$(direnv hook $SHELL)"

if [ -f ~/.local.zshrc ]; then
  source ~/.local.zshrc
fi

if [ -f ~/.iterm2_shell_integration.zsh ]; then
  source ~/.iterm2_shell_integration.zsh
fi

alias please='sudo $(fc -ln -1)'

# added by travis gem
[ -f /Users/adamc/.travis/travis.sh ] && source /Users/adamc/.travis/travis.sh

# added for asdf support
[ -f /Users/adamc/.asdf/asdf.sh ] && source /Users/adamc/.asdf/asdf.sh
[ -f /Users/adamc/.asdf/completions/asdf.bash ] && source /Users/adamc/.asdf/completions/asdf.bash
