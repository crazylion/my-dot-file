 export PATH=~/bin:$PATH:~/bin/jruby-1.1/bin:/opt/local/bin
 export HISTCONTROL=ignoredups
 alias gpsgo="cd ~/projects/gpsgo && mate . && script/server"

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
#export PATH
alias mate='open -a TextMate.app'
alias man='PAGER=most man'
alias mates='mate . && script/server'
export export HISTTIMEFORMAT='%F %T '
