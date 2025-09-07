autoload -Uz compinit
compinit

if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
    export TERM=xterm-256color
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  # eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.json)"
fi

# Enable shell autocompletion for UV
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# Enable NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Replace ls, ll, and tree with exa
alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"

# Replace cat with bat
alias cat="bat"

# ZSH Autocomplete
source "$HOME/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

# FZF(FuzzyFinder)
source <(fzf --zsh)

# Include other environment file if present
export ENV_VARS_FILE="$HOME/.other_keys"
[[ -f $ENV_VARS_FILE ]] && source $ENV_VARS_FILE

# ZSH AutoSuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi


# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/kennysambrook/.lmstudio/bin"
# End of LM Studio CLI section

