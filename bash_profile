#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

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
jobcnt='$(jobs | egrep "^\\[" | wc -l)'

export PS1="${oliv}[$clock] ${em}${user}${rst}[${jobcnt}]${white}@${oliv}${host}${white}:${white}${path}${white}${oliv}\\\$${rst} "

# Start SSH agent
if [ -z "`pidof ssh-agent`" ]; then
  ssh-agent > ~/.ssh/agent
  eval $(cat ~/.ssh/agent)
  ssh-add
  ssh-add ~/dropbox/keys/bitbucket_key

else
  eval $(cat ~/.ssh/agent) >/dev/null
fi

# Support for pyenv
#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"

