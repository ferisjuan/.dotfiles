export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

plugins=[git]

alias zshconfig="nvim ~/.zshrc"
alias sz="source ~/.zshrc"
alias c="clear"

if (( $+commands[nvim] )); then
  alias nv="nvim"
else
  echo 'nvim: command not found, please install it from https://github.com/neovim/neovim/wiki/Installing-Neovim'
fi

if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
else
  echo 'zoxide: command not found, please install it from https://github.com/ajeetdsouza/zoxide'
fi

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/development/flutter/bin
export CHROME_EXECUTABLE=/usr/bin/brave

eval "$(starship init zsh)"
