
# This is a script to install development tools for mac os x.

# installing oh my zsh and setting it as default shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew, it will install Xcode command line tools as well
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install bundel 
brew tap Homebrew/bundle

# run brew bundle
brew bundle install 

# the bundle file is in the same directory as this script, but if is not the command will execute " brew install bundle ~ Brewfile"
 

