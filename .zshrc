eval "$(/opt/homebrew/bin/brew shellenv)"
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"
fi

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

{
    # Try to get weather
    weather=$(curl -s "http://wttr.in/Austin?format=4")
    echo $weather
} || {
    # Catch the error
    echo "Weather unavailable"
}

# must be at end
alias ls='colorls --sort-dirs -1'
alias lc='colorls -lA --sd'


