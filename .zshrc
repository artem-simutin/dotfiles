# Author: Artem Simutin
export EDITOR="nvim"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# terminal
# export TERM=xterm-256color

# Plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Start zsh
source $ZSH/oh-my-zsh.sh

# Aliases 
alias c="open -a 'Visual Studio Code'"
alias ls="eza -la --icons --git --no-user"
alias spotify="spotify_player"
alias n="nvim"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/artem.simutin/.bun/_bun" ] && source "/Users/artem.simutin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/artem.simutin/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# node config
# export NODE_OPTIONS="--max-old-space-size=1024"

# Starship prompt
eval "$(starship init zsh)"

# Startup banner
# macchina

# go env
GOPATH=$HOME/go
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# python poetry
export PATH="/Users/artemsimutin/.local/bin:$PATH"

# python
# PATH=$(pyenv root)/shims:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Local Chromium path
export LOCAL_CHROME_EXECUTABLE_PATH="/usr/local/chromium/chromium/mac_arm-1380955/chrome-mac/Chromium.app/Contents/MacOS/Chromium"

# tmux
## Check if inside a tmux session
if [ -z "$TMUX" ]; then
  # Check if there are any tmux sessions already
  if tmux has-session 2>/dev/null; then
    # Attach to the first available session
    tmux attach-session -t $(tmux list-sessions -F "#{session_name}" | head -n 1)
  else
    # Start a new session if none exists
    tmux new-session
  fi
fi

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Added by Windsurf
export PATH="/Users/artemsimutin/.codeium/windsurf/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/artemsimutin/.lmstudio/bin"

# Added by Windsurf
export PATH="/Users/artemsimutin/.codeium/windsurf/bin:$PATH"
