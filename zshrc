# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

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
plugins=(git ruby rails zsh-syntax-highlighting)
LANG=zh_TW.UTF-8

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
