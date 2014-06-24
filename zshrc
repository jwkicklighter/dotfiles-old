# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git git-flow git-extras github ruby rvm rails sublime wd bundler cap docker gem node npm bower gradle brew zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

#export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:~/bin:~/dev/android-sdk-macosx/platform-tools:~/dev/scala-2.10.2/bin:~/bin/sbt:~/bin:~/dev/android-sdk-macosx/tools:/Applications/acquia-drupal/drush:~/dev/pebble-dev/arm-cs-tools/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:~/bin:~/dev/android-sdk-macosx/platform-tools:~/dev/scala-2.10.2/bin:~/bin/sbt:~/bin:~/dev/android-sdk-macosx/tools:/Applications/acquia-drupal/drush"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


## CUSTOM STUFF ##

# Alias Stuff
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias virtualhost='sudo virtualhost.sh'
alias androiddevicemonitor='$HOME/dev/android-sdk-macosx/tools/monitor'
alias szshrc='source $HOME/.zshrc'
#alias snap='$HOME/.cabal/bin/snap'

# Mac Specific Alias Stuff
cleanopenwith='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'

# Grunt Alias Stuff
alias grserve='grunt server'

# Git Alias Stuff
alias gs='git status'

# Todo.txt Alias Stuff
alias t='todo.sh'
alias tc='clear; todo'
alias todo='todo.sh'
alias todoa='todo a'
alias todols='todo ls'
alias tododo='todo do'

# Docker Stuff
export DOCKER_HOST=tcp://192.168.59.103:2375

# Make Java 1.6 Default
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

# ALL the bins!
export PATH="/usr/local/bin":$PATH
export PATH=$PATH:"/usr/local/sbin"
export PATH=$PATH:"/usr/bin"
export PATH=$PATH:"/usr/sbin"
export PATH=$PATH:"/bin"
export PATH=$PATH:"/sbin"
export PATH=$PATH:"$HOME/bin"
export PATH=$PATH:"$HOME/bin/sbt"

# Cabal bins
# export PATH=$PATH:"$HOME/.cabal/bin"

# Haskell bins
#export PATH=$PATH:"/Library/Haskell/bin"

# Android SDK
#export PATH=$PATH:"$HOME/dev/android-sdk-macosx/platform-tools"
#export PATH=$PATH:"$HOME/dev/android-sdk-macosx/tools"

# Scala binaries
#export PATH=$PATH:"$HOME/dev/scala-2.10.2/bin"

# Drupal Drush
#export PATH=$PATH:"/Applications/acquia-drupal/drush"

# Dart
#export PATH=$PATH:"/Users/jordan/dev/dart/dart-sdk/bin"

# NPM
export PATH=$PATH:"/usr/local/share/npm/bin"

# Ruby
export PATH=$PATH:"$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
