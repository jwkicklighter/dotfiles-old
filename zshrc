# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/dotfiles
export ZSH_PLUGINS=$DOTFILES/zsh-plugins
export TODOIST_API=`cat $HOME/.todoist_api`

ZSH_THEME="powerline"

plugins=(osx git git-flow git-extras github ruby rvm rails sublime wd bundler cap docker gem node npm bower gradle brew grunt zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source $ZSH_PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh

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
alias b2d='boot2docker'
#alias snap='$HOME/.cabal/bin/snap'

# Mac Specific Alias Stuff
cleanopenwith='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'

# Grunt Alias Stuff
alias grserve='grunt server'

# Git Alias Stuff
alias gs='git status'

# Todo.txt Alias Stuff
# alias t='todo.sh'
# alias tc='clear; todo'
# alias todo='todo.sh'
# alias todoa='todo a'
# alias todols='todo ls'
# alias tododo='todo do'

alias todoist='$DOTFILES/apps/todoist-cli/todoist.py'
alias t='todoist'
alias tp='todoist p ls'
alias tls='todoist ls'
alias tlst='todoist ls tod' #Todoist List Today
alias tlsn='todoist ls tom' #Todoist List Next day

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

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
