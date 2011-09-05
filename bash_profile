 export PATH=/Users/crazylion/projects/utilities/bin:/usr/local/lib/cw:~/bin:~/perl5/bin:/usr/local/nginx/sbin:/usr/local/bin:$PATH:~/bin/jruby-1.1/bin:/opt/local/bin:~/bin/android-sdk-mac_86/tools
 export HISTCONTROL=ignoredups
 alias gpsgo="cd ~/projects/gpsgo && mate . && script/server"

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
#export PATH
alias mate='open -a TextMate.app'
# alias man='PAGER=most man'
alias mates='mate . && script/server'
alias push='git push'
export HISTTIMEFORMAT='%F %T '
export PS1="\u@\h \w>"
source ~/.localrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*
alias lsr="ls -R | grep \":$\" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

. ~/.localrc
