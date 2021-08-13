# some are from this page
# https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html/amp?__twitter_impression=true

alias ll='ls -alF'
alias la='ls -A'
alias lf='ls -CF'
alias l='ls -la'
alias tmux='tmux -2'
alias vless='/usr/share/vim/vim74/macros/less.sh'
alias df='df -H'
alias du='du -ch'
alias du1='du -ch --max-depth=1'
alias du2='du -ch --max-depth=2'
alias du3='du -ch --max-depth=3'
alias tmux='tmux -2'

# Start calculator with math support
alias bc='bc -l'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    # install  colordiff package
    if [ -x /usr/bin/colordiff ]; then
        alias diff='colordiff'
    fi
fi

# Make mount command output pretty and human readable format
alias mount='mount |column -t'

# PING: Do not wait interval 1 second, go fast
alias fastping='ping -c 100 -s.2'
