export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
# CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# DISABLE_MAGIC_FUNCTIONS="true"
# ENABLE_CORRECTION="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

ZSH_CUSTOM="$HOME/.zsh-custom"
plugins=(git zsh-helix-mode)
source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='hx'
fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# GCP Things
GOOGLE_CLOUD_SDK_PATH="$HOME/Downloads/google-cloud-sdk"
if [ -f '$GOOGLE_CLOUD_SDK_PATH/completion.zsh.inc' ]; then . '$GOOGLE_CLOUD_SDK_PATH/completion.zsh.inc'; fi

# Languages

## Angular
export NODE_MODULES_GLOBAL="$(npm root -g)"

# Bun
export BUN_INSTALL="$HOME/.bun"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# Aliases
alias ngsv="npx ng serve --no-hmr $1"
alias update-apidocs="curl -o ./api-docs.json http://localhost:8080/docs/api-docs && npm run generate:api"

# Paths
path+=("$GOOGLE_CLOUD_SDK_PATH/bin")
path+=("/usr/local/bin")
path+=("$BUN_INSTALL/bin")
path+=("$HOME/.antigravity/antigravity/bin")


source "$HOME/.cargo/env"

export PATH


## eof
