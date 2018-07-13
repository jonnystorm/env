#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -n "$DISPLAY" ] && transset-df -a 0.9 &>/dev/null

bind -f $HOME/.key_bindings

alias ls='ls --color=auto -F'
alias less='less -R'

export VISUAL=vim
export PATH="$HOME/bin:$HOME/.local/bin:$HOME/dropbox/consulting/bin${PATH+:}${PATH}"

# User specific environment and startup programs
rst='\[\e[0m\]'
em='\[\e[3m\]'
oliv='\[\033[38;5;142m\]'
ltgrn='\[\e[0;92m\]'
red='\[\e[0;31m\]'
white='\[\e[0;0m\]'
host='\h'
path='\W'
clock='\t'
user='\u'

export PS1="${oliv}[$clock] ${user}${rst}[\j]${white}@${oliv}${host}${white}:${white}${path}${white}${oliv}\\\$${rst} "

# Start SSH agent
if [ -z "`pidof ssh-agent`" ]; then
  ssh-agent > ~/.ssh/agent
  eval $(cat ~/.ssh/agent)
  ssh-add
  ssh-add ~/.ssh/bitbucket
else
  eval $(cat ~/.ssh/agent) >/dev/null
fi

# For installed Elixir escripts
export PATH="$PATH:$HOME/.mix/escripts"

# For elm
#export ELM_HOME="$HOME/node_modules/elm/share"
export PATH="$PATH:$HOME/node_modules/.bin"

# Break OpenGL
#MESA_GL_VERSION_OVERRIDE=3.3

# For kiex
test -s "$HOME/.kiex/scripts/kiex" &&
  source "$HOME/.kiex/scripts/kiex"

# Add Heroku bins to path
#PATH="/usr/local/heroku/bin/:$PATH"

