# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx mercurial brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:~/.local/bin:$PATH
# python dir for powerline
export PATH=~/Library/Python/2.7/bin:$PATH
# exuberant ctags dir
export PATH=/usr/local/Cellar/ctags/5.8/bin:$PATH
# NPM (grunt, jshint, bower)
export PATH=/usr/local/share/npm/bin:$PATH
# Heroku toolbelt
export PATH=/usr/local/heroku/bin:$PATH
# Brew Coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# /opt/local
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# No shared history
setopt no_share_history

. ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

# Pretty terminal colors for everything!
export LS_OPTIONS='--color=auto'
eval `dircolors -b ~/.dircolors/default`
. ~/.zsh/scripts/zsh-syntax-highlighting-filetypes.zsh

export PERL_LOCAL_LIB_ROOT="/Users/aaronh/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base "/Users/aaronh/perl5"";
export PERL_MM_OPT="INSTALL_BASE=/Users/aaronh/perl5";
export PERL5LIB="/Users/aaronh/perl5/lib/perl5:$PERL5LIB";
export PATH="/Users/aaronh/perl5/bin:$PATH";


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# My own scripts
export PATH="/Users/aaronh/Scripts:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# ADB
export PATH="$PATH:$HOME/Lib/android-sdk/platform-tools"

# Aliasessesses
# alias ls='ls $LS_OPTIONS'
# alias gitlog="git log --graph --pretty=format:'%C(bold white)%h%Creset -%C(yellow)%d%Creset %s %C(238)(%cr) %C(30)<%an>%Creset' --abbrev-commit"
#
. ~/.zsh/aliases.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/aaronh/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

