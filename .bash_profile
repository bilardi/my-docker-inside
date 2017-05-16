if [ -f /usr/local/bin/dockerd ]; then
  dockerd --init &
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
