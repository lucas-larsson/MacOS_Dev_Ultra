
# This is a script to install development tools for mac os x.
# step one download HomeBrew which will install Xcode command line tools

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install bundel 
brew tap Homebrew/bundle

# run brew bundle
brew install bundle 

# the bundle file is in the same directory as this script, but if is not the command will execute " brew install bundle ~ Brewfile"
 

