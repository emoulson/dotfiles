#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*

info "Installing RVM, Ruby, and Rails..."
# Install GPG keys
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# Set the rvm_path to be user-facing
echo 'rvm_path="$HOME/.rvm"' >> ~/.rvmrc

# Download RVM and install
curl -sSL https://get.rvm.io | bash -s stable --rails

# Reload!
source ~/.rvm/scripts/rvm

# Install bundler
gem install bundler --no-rdoc --no-ri

# Download and setup the RVM Fish functions
curl -L --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish
success "Finished installing RVM, Ruby, and Rails."