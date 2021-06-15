if [ -d $HOME/.rbenv ]; then 
  export PATH="$HOME/.rbenv/bin:$PATH" 
  eval "$(rbenv init -)" 
fi

export TERM="xterm-256color"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="powerlevel9k/powerlevel9k"

source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
# POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX='\uf0da'
POWERLEVEL9K_VCS_GIT_ICON='\ue60a'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(rbenv rvm time background_jobs virtualenv battery)

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

DEFAULT_USER="antony.gelson"
source $ZSH/oh-my-zsh.sh

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github autojump command-not-found)

# User configuration
alias ezsh='vim ~/.zshrc'
alias szsh='source ~/.zshrc'

# alias for Git
alias g='git'
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
alias gm='git merge'
alias gcm='git commit -m '

alias gpod='git pull origin develop'
alias gprod='git pull --rebase origin develop'
alias gpom='git pull origin master'

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

alias d='docker'
alias dc='docker-compose'
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias dl='docker logs'
alias de='docker exec -ti'
alias dp='docker ps'
alias dpa='docker ps -a'
alias dm='docker-machine'
alias di='docker images'
alias dri='docker rmi'
alias dv='docker volume'
alias dn='docker network'

export VISUAL=vim
export EDITOR="$VISUAL"
export GIT_EDITOR=vim

setopt autocd
export PATH="/usr/local/opt/openssl/bin:$PATH"

# export HOMEBREW_GITHUB_API_TOKEN=42fbff72db50fc094b053d3cc02c1c1557fd674a

alias explico='bundle exec explico'
export EXPLICO_PATH="/usr/local/explico_gem"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

. $(brew --prefix asdf)/asdf.sh

export KERL_CONFIGURE_OPTIONS="--enable-sctp"

function ms_traffic_dump() {
  server="ms" && user="centos" &&
  dir="/var/log/traffic_dump" &&
  file=$(ssh ms "ls -t ${dir}/ | head -1") &&
  scp $user@$server:$dir/${file} ~/Downloads/traces/$server/${file}.pcap &&
  wireshark ~/Downloads/traces/$server/${file}.pcap
}

function dev1_traffic_dump() {
  server="10.169.102.71" && user="f.parmanchukov" &&
  dir="/var/log/traffic_dump" &&
  file=$(ssh f.parmanchukov@10.169.102.71 "ls -t ${dir}/ | head -1") &&
  scp $user@$server:$dir/${file} ~/Downloads/traces/$server/${file}.pcap &&
  wireshark ~/Downloads/traces/$server/${file}.pcap
}

function dev3_traffic_dump() {
  server="10.169.102.73" && user="f.parmanchukov" &&
  dir="/var/log/traffic_dump" &&
  file=$(ssh f.parmanchukov@10.169.102.73 "ls -t ${dir}/ | head -1") &&
  scp $user@$server:$dir/${file} ~/Downloads/traces/$server/${file}.pcap &&
  wireshark ~/Downloads/traces/$server/${file}.pcap
}

function startVPN() {
  local _host _account_name _service_name _username _pwd

  _host="${1:-webvpn.funbox.io}"
  _account_name="${_host}"
  _service_name="${_host}"

  _username="${2-f.parmanchukov}"
  _pwd=$(security find-generic-password -a "${_account_name}" -s "${_service_name}" -w 2>/dev/null)

  echo "${_pwd}\n" | sudo openconnect "${_host}" --mtu=1200 --background --quiet --user="${_username}" --passwd-on-stdin &> /dev/null 
}

function stopVPN() {
  sudo pkill -SIGTERM -f openconnect >/dev/null
}

function restartVPN() {
  stopVPN
  startVPN
}

function vpn() {
  restartVPN
}

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="/usr/local/sbin:$PATH"
