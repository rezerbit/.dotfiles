if [ -d $HOME/.rbenv ]; then 
  export PATH="$HOME/.rbenv/bin:$PATH" 
  eval "$(rbenv init -)" 
fi


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX='\uf0da'
POWERLEVEL9K_VCS_GIT_ICON='\ue60a'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(rbenv rvm time background_jobs ram virtualenv battery)

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

DEFAULT_USER="rezerbit"

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github autojump command-not-found)



# User configuration

export PATH="/Users/rezerbit/.rvm/gems/ruby-2.1.1/bin:/Users/rezerbit/.rvm/gems/ruby-2.1.1@global/bin:/Users/rezerbit/.rvm/rubies/ruby-2.1.1/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/rezerbit/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Aliases
alias ezsh='vim ~/.zshrc'
alias szsh='source ~/.zshrc'
alias tmux='tmux attach || tmux new'
alias server='ssh root@192.168.225.194'
alias ll="ls -al"
alias clr="clear"

#Alias for Rails
alias be='bundle exec'
alias b='bundle'
alias bi='bundle install'
alias bu='bundle update'
alias z='zeus'

# hashs
hash -d blz=~/work/blizko
alias at='cd ~/work/autotests'
alias asb='cd ~/work/autotests/selenium_blizko'
alias asp='cd ~/work/autotests/selenium_pulscen'
alias asi='cd ~/work/autotests/apress-selenium_integration'
alias asr='cd ~/work/autotests/apress-selenium_reviews'

alias rs='RAILS_ENV=test rspec'
alias cu='RAILS_ENV=test cucumber'
alias dump-hr='mysqldump -u root -p nauhr_development > ~/dump/nauhr_development_dump_$(date +"%Y-%m-%d@%H:%M:%S").sql'

# alias for Git
alias ga='git add'
alias gaa='git add .'
alias gs='git status --short'
alias gc='git commit'
alias gp='git push'
alias gl='git log --graph --oneline --decorate --all'
alias go='git checkout'
alias gob='git checkout -b'
alias gb='git branch'
alias gd='git diff'
alias gdt='git difftool -y -t Kaleidoscope'
alias gm='git merge'
alias gmt='git mergetool -y -t Kaleidoscope'

alias got='git '
alias get='git '

alias gcm='git commit -m '
alias g='git'

## Alias for Abak Press
alias bb='rake build RAILS_ENV=test'
alias sds='searchd --config ~/work/projects/blizko/config/development.sphinx.conf'

alias rrs='rake resque:start'
alias rts='rake ts:start'

alias gpud='git pull upstream develop'
alias gprud='git pull --rebase upstream develop'
alias gpum='git pull upstream master'
alias gsl='git stash list'
alias gsd='git stash drop'
alias gst='git stash'
alias gss='git stash show'
alias gsa='git stash apply'
alias gsp='git stash pop'
alias gpo='git push origin'
alias gpof='git push origin -f'  
alias gca='git commit --amend' 
alias gcane='git commit --amend --no-edit' 
alias god='go develop && bi && rake core:db:migrate'

alias z='zeus'
alias zs='zeus s'
alias zc='zeus c'
alias zr='zeus rspec'

alias rg='rubocop-git -c ~/work/ruby.yml'

# Деплой на сервер
alias ddeploy='ssh root@192.168.225.194'

# Путь к Scala
export SCALA_HOME=~/scala/scala-2.11.5
export PATH=$SCALA_HOME/bin:$PATH

# Путь к IDEA
export IDEA_HOME=/usr/local/share/idea
export PATH=$IDEA_HOME/bin:$PATH

# RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session

alias navicat='/opt/navicat/start_navicat'
alias rubymine='/opt/RubyMine-7.0.2/bin/rubymine.sh'

force_color_prompt=yes

export TERM="xterm-256color"

# color Scala REPL
export JAVA_OPTS=-Dscala.color
export PATH=$PATH:~/bin
export PATH=$PATH:~/activator-1.3.2

PATH_TO_RUBYMINE_BIN_DIR='/opt/rubymine/bin'

export VISUAL=vim
export EDITOR="$VISUAL"
export GIT_EDITOR=vim

# Nim path
export PATH=$PATH:$HOME/Nim/bin
export PATH=$PATH:$HOME/.nimble/bin

#setxkbmap -layout us -option ctrl:nocaps # AHTUNG!
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
export GEM_HOME=$HOME/.gem
PATH=$PATH:$HOME/.gem/bin
PATH=$PATH:$HOME/.gem/ruby/2.3.4/bin
PATH=$PATH:$HOME/.gem/ruby/2.4.1/bin

setopt autocd
