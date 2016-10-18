# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples

umask 022

# the rest of this file is commented out.

if [ "$PS1" ]; then

    # enable color support of ls and also add handy aliases

    if [ `uname` = "FreeBSD" ]; then # probably on the cluster
        alias ls='gnuls --color=always'
    elif [ `uname` = "Darwin" ]; then
        alias ls='ls -G'
    else # Linux
        eval `dircolors`
        alias ls='ls --color=always'
    fi

    # set a fancy prompt
    COLOR1="\[\033[1;36m\]" # light cyan
    COLOR2="\[\033[0;36m\]" # cyan
    COLOR3="\[\033[0;37m\]" # white
    COLOR4="\[\033[1;34m\]" # light blue
    COLOR5="\[\033[1;32m\]" # green
    COLOR6="\[\033[1;31m\]" # red
    DEFAULTCOLOR="\[\033[0m\]" # default

    PS1="$COLOR6\u$COLOR3@$COLOR4\h$DEFAULTCOLOR:\w"'$(__git_ps1 " (%s)" 2> /dev/null)\n\$ '
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'

    export EDITOR=vim
    export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

    if [ "$TERM" = "linux" ]; then
        export PS1=$PS1
    else
        export PS1=$PS1$TITLEBAR
    fi

    shopt -s histappend
fi

# set PATH so it includes my private bin if it exists
if [ -d ~/bin ] ; then
    PATH="~/bin:${PATH}"
fi

# Completion
if [ "$PS1" -a -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Homebrew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# GOROOT binaries
if [ -d /usr/local/opt/go/libexec/bin ]; then
    PATH=$PATH:/usr/local/opt/go/libexec/bin
fi

# GOPATH and bianries
if [ -d ~/Projects/Go ]; then
    export GOPATH=~/Projects/Go
fi
if [ -d $GOPATH/bin ]; then
    PATH=$PATH:$GOPATH/bin
fi

# The next line updates PATH for the Google Cloud SDK.
source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
