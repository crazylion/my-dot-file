# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rails zsh-syntax-highlighting brew capistrano git-flowmosh pip rake rvm yii2 ssh-agent git-flow composer nvm vundle)
#LANG=zh_TW.UTF-8

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#PATH=/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:~/Qt5.0.0/5.0.0/clang_64/bin:$PATH
PATH=/usr/local/git/bin:/usr/local/bin:/usr/X11/bin:$PATH:/usr/local/share/npm/bin:/Users/crazylion/bin
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export GOROOT=/usr/local/go
#  export GOPATH=~/go
#alias bower=/usr/local/share/npm/lib/node_modules/bower/bin/bower

export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
export JAVA_HOME="$(/usr/libexec/java_home)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/crazylion/.gvm/bin/gvm-init.sh" ]] && source "/Users/crazylion/.gvm/bin/gvm-init.sh"

#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#eval "$(pyenv init -)"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

[ -s "/Users/crazylion/.jabba/jabba.sh" ] && source "/Users/crazylion/.jabba/jabba.sh"
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}
export PATH="/usr/local/opt/opencv3/bin:$PATH:$(yarn global bin)"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PATH="/Users/meng-yanglee/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/meng-yanglee/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/meng-yanglee/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/meng-yanglee/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/meng-yanglee/perl5"; export PERL_MM_OPT;

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
