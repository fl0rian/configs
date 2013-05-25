# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANG=de_DE.UTF-8

# Aliases
# alias df='df -h'
# alias ls='ls -G --color=auto'
# alias la="ls -la --color=auto"
# alias ll="ls -lah --color=auto"
# alias l="ls -lah --color=auto"

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
alias kk='ls -alF'
# alias 'öö'='ls -alF'

# some other useful aliases
alias cd..='cd ..'
alias cd...='cd ...'
alias ..='cd ..'
alias ...='cd ...'
alias df='df -h'
alias sudo='sudo '
alias frupic='~/scripts/frupic.sh'
alias inst='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias search='apt-cache search'
alias dist-upgrade='sudo apt-get dist-upgrade'
alias aus='sudo shutdown -h now'
alias doch='sudo $(history -p !-1)'


export PYTHON25=/usr/local/bin/python2.5
export PYTHON26=/usr/local/bin/python2.6
export PYTHON27=/usr/bin/python

export GIT_SSL_NO_VERIFY=true

#Virtualenvwrapper
#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/bin/virtualenvwrapper.sh

# Awesome oneliner 
# some nice color if exit status 0, yellow if exit status 1
# shows the python virtualenv you are working on like [2.7]
export PROMPT_COMMAND='PS1="\`if [ \$? = 0 ]; then echo "\\[\\e[95m\\]"; else echo "\\[\\e[93m\\]"; fi\`\`echo ${VIRTUAL_ENV:+[${VIRTUAL_ENV##*/}]}\`[\u@\h: \`if [[ `pwd|wc -c|tr -d " "` > 30 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
