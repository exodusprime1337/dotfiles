eval "$(/opt/homebrew/bin/brew shellenv)"
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"
fi

# Enable Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# Load pyenv-virtualenv automatically
eval "$(pyenv virtualenv-init -)"

# Enable NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
  
# {
#     # Try to get weather
#     weather=$(curl -s "http://wttr.in/Austin?format=4")
#     echo $weather
# } || {
#     # Catch the error
#     echo "Weather unavailable"
# }

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

# Include other environment file
export ENV_VARS_FILE="$HOME/.other_keys"
[[ -f $ENV_VARS_FILE ]] && source $ENV_VARS_FILE

# # must be at end
# alias ls='colorls --sort-dirs -1'
# alias lc='colorls -lA --sd'

# ZSH AutoSuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh