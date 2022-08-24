export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  tmux
  docker-compose
  docker
  node
  npm
  yarn
  dnf
  vi-mode
  history-substring-search
)

source $ZSH/oh-my-zsh.sh

# Exec stuff

# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Colors
# export TERM=rxvt-unicode
export TERM=tmux-256color

# Kitty
# autoload -Uz compinit
# compinit
# Completion for kitty
# kitty + complete setup zsh | source /dev/stdin

# stuff
alias control="sudo systemctl"
alias resource="source ~/.zshrc"
alias tatt="tmux att -t"
alias tnew="tmux new -s"
alias skall="sudo killall"
alias vimtree="vim +nerdtree"
alias nvimtree="nvim +nerdtree"
alias gerp="grep"

# Flatpacks
alias code="flatpak run com.visualstudio.code"
alias slackpak="flatpak run com.slack.Slack"

# Tasks
alias tpw="task project:Work"

# Docker
alias doc-ip="docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
alias doc-flush="sudo iptables -F DOCKER-ISOLATION-STAGE-2"

doc-clean () {
  docker rmi $(docker images -q -f dangling=true)
  docker volume rm $(docker volume ls -q -f dangling=true)
}

# embed cheat.sh!
function cheat() {
    curl https://cheat.sh/$@
}
# export -f cheat


# ENV VARS
export GOPATH=$HOME/Code/go
export XDG_CONFIG_HOME=$HOME/.config

export WIFI_DEVICE=wlp3s0

# Night Mode
day_mode () {
  xrandr --output eDP-1 --gamma 1:1:1 --brightness 1.0
}

night_mode () {
  xrandr --output eDP-1 --gamma 1:1:0.5 --brightness 0.7
}

take_note () {
  nvim $(date --rfc-3339='date')-$1.md
}


# ASDF installer
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# PATH
export PATH="$HOME/.cargo/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:/usr/local/go/bin:$GOPATH/bin"
