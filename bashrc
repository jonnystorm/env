#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bind -f $HOME/.key_bindings

alias ls='ls --color=auto -F'

export VISUAL=vim

#export FBFONT=/usr/share/kbd/consolefonts/ter-216n.psf.gz

export PATH="$HOME/bin${PATH+:}${PATH}"

#export PATH="$HOME/perl5/bin${PATH+:}${PATH}"
#PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"~/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=~/perl5"; export PERL_MM_OPT;

#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd_hrgb'

# For installed Elixir escripts
export PATH="$PATH:$HOME/.mix/escripts"

# For xmonad
export PATH="$PATH:$HOME/.cabal/bin:~/.xmonad/bin"

# For elm
#export ELM_HOME="$HOME/node_modules/elm/share"
#export PATH="$PATH:$HOME/node_modules/elm/bin"

# Break OpenGL
#MESA_GL_VERSION_OVERRIDE=3.3

# For kiex
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

# Add Heroku bins to path
#PATH="/usr/local/heroku/bin/:$PATH"
