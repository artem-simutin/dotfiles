# Author: Artem Simutin
export EDITOR="nvim"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

# Secrets source
source $HOME/.zsh_secrets

# Start zsh
source $ZSH/oh-my-zsh.sh

# Aliases
alias n="nvim"
alias w="windsurf"
alias bu="brew update && brew upgrade && brew cleanup && brew autoremove"
alias auz="/opt/homebrew/bin/zed"
alias z="/usr/local/bin/zed"
alias oc="opencode"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/artemsimutin/.bun/_bun" ] && source "/Users/artemsimutin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by Windsurf
export PATH="/Users/artemsimutin/.codeium/windsurf/bin:$PATH"

# ZSH Autosuggestions and syntax highlighting
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/Users/artemsimutin/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(starship init zsh)" 
precmd() { precmd() { echo "" } }
alias clear="precmd() { precmd() { echo } } && clear"
