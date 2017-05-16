# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# some more wmaker aliases
#alias x='xinit -- :2'
#alias xr='xrandr --output VGA1 --auto --right-of HDMI1'
#alias xr='xrandr --output VGA1 --auto --left-of HDMI1'
#alias rbkp='rsync -avz `cat ~/.backup` ~/Backup/'
#alias sdh='sudo shutdown -h now'
#alias sdr='sudo shutdown -r now'

alias emacs='emacs -nw'
alias psql='docker run -it --rm --net=test postgres:9 psql'
alias mysql='docker run -it --rm -e MYSQL_ALLOW_EMPTY_PASSWORD=yes --net=test --entrypoint="mysql" mysql/mysql-server:5.7'
alias mysqldump='docker run -it --rm -e MYSQL_ALLOW_EMPTY_PASSWORD=yes --net=test --entrypoint="mysqldump" mysql/mysql-server:5.7'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
