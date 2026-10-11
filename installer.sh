
# This is a script to install development tools for mac os x.

# Directory of this script, so it works no matter where it is run from
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Install Homebrew, it will install Xcode command line tools as well
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# run brew bundle
brew bundle install --file="$SCRIPT_DIR/Brewfile"

# Copy the shell config, keeping a backup of an existing one
if [ -f "$HOME/.zshrc.local" ]; then
  cp "$HOME/.zshrc.local" "$HOME/.zshrc.local.backup"
fi
cp "$SCRIPT_DIR/.zshrc.local" "$HOME/.zshrc.local"

# Source it from ~/.zshrc if it is not already
touch "$HOME/.zshrc"
if ! grep -q 'zshrc.local' "$HOME/.zshrc"; then
  echo '[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local' >> "$HOME/.zshrc"
fi
