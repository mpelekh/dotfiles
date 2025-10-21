# Load environment variables and login shell configuration
# This file is loaded for login shells

# Set locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Add Homebrew to PATH if it exists
if [ -d "/opt/homebrew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# Source .zshrc if it exists
if [ -f "$HOME/.zshrc" ]; then
  source "$HOME/.zshrc"
fi 