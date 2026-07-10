# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# Prompt is handled by starship (see bottom of file), so leave the theme empty
# to avoid oh-my-zsh computing a prompt that gets overwritten.
ZSH_THEME=""

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
#
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
# Trimmed: removed ruby/rails/capistrano/rake/rvm/yii2/vundle (legacy, unused).
# Re-add any you still need. rvm/nvm are lazy-loaded below instead of via plugin.
plugins=(git brew pip ssh-agent git-flow composer)
export LANG=zh_TW.UTF-8

# Skip the compaudit permission check on every startup (was ~30ms). Safe on a
# single-user machine where you control the completion dirs.
ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

# ---- PATH -------------------------------------------------------------------
# All static PATH additions are consolidated here. `typeset -U path` keeps
# entries unique (first occurrence wins), so later prepends further down the
# file (gcloud include, ~/.local/bin/env) still take precedence without
# creating duplicates. Prepended dirs (top) win over the system PATH; the few
# appended dirs (bottom) are lowest priority.
typeset -U path
path=(
  $HOME/.puro/bin                              # puro Flutter (must beat homebrew dart)
  $HOME/.puro/envs/stable/flutter/bin
  $HOME/.local/bin                             # uv / pipx / antigravity CLI
  $HOME/.bun/bin
  $HOME/.meteor
  /opt/homebrew/opt/mysql-client/bin
  $HOME/.yarn/bin
  $HOME/.config/yarn/global/node_modules/.bin
  /usr/local/bin
  $path                                        # system + homebrew + oh-my-zsh
  $HOME/go/bin                                 # appended: lowest priority
  $HOME/.rvm/bin
  $HOME/Library/Android/sdk/platform-tools
)
# -----------------------------------------------------------------------------

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
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Private, machine-local aliases (SSH hosts, etc.) live outside this repo so
# they are never committed. See ~/.zsh_private.
[ -f "$HOME/.zsh_private" ] && source "$HOME/.zsh_private"



export NVM_DIR="$HOME/.nvm"
# Lazy-load nvm: the real nvm.sh is only sourced the first time you call
# nvm/node/npm/npx, instead of on every shell startup (was ~200ms+).
_load_nvm() {
  unset -f nvm node npm npx 2>/dev/null
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}
nvm()  { _load_nvm; nvm "$@"; }
node() { _load_nvm; node "$@"; }
npm()  { _load_nvm; npm "$@"; }
npx()  { _load_nvm; npx "$@"; }



# NOTE: the old load-nvmrc chpwd hook (auto-switch node version per .nvmrc on
# every `cd`) was removed for startup speed. Run `nvm use` manually when needed.

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/meng-yanglee/.dart-cli-completion/zsh-config.zsh ]] && . /Users/meng-yanglee/.dart-cli-completion/zsh-config.zsh
## [/Completion]


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/meng-yanglee/project/my-dot-file/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/meng-yanglee/project/my-dot-file/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/meng-yanglee/project/my-dot-file/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/meng-yanglee/project/my-dot-file/google-cloud-sdk/completion.zsh.inc'; fi

# Lazy-load rvm: sourced on first `rvm` call (previously loaded via the omz rvm
# plugin, which was removed). ~/.rvm/bin is added in the PATH block above.
rvm() {
  unset -f rvm
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
  rvm "$@"
}

# Lazy-load SDKMAN: init script is sourced on first `sdk` call instead of at
# startup. (SDKMAN normally requires this at the END of the file.)
export SDKMAN_DIR="$HOME/.sdkman"
sdk() {
  unset -f sdk
  [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
  sdk "$@"
}

# bun completions
[ -s "/Users/meng-yanglee/.bun/_bun" ] && source "/Users/meng-yanglee/.bun/_bun"

# bun / android env vars (their bin dirs are added in the PATH block above)
export BUN_INSTALL="$HOME/.bun"
export ANDROID_HOME="$HOME/Library/Android/sdk"

. "$HOME/.local/bin/env"

alias rg='/opt/homebrew/bin/rg'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"
