# rvm
set -g -x PATH "$HOME/.rvm/bin" $PATH
set -g -x PATH /usr/local/bin $PATH

# put Rust/Cargo in the path
set -g -x PATH "$HOME/.cargo/bin" $PATH

# Go stuff
set GOPATH "$HOME/go"
set -g -x PATH "$GOPATH/bin" $PATH

source ~/.iterm2_shell_integration.(basename $SHELL)

# Aliases
alias cat="bat"
alias ls="exa"

# Git aliases
alias gco="git checkout"
alias gl="git pull"
alias gst="git status"

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix coreutils)/libexec/gnuman $MANPATH

# Findutils bin and man folders
set -x -g PATH (brew --prefix findutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix findutils)/libexec/gnuman $MANPATH

# User bin folder
set -x -g PATH ~/bin $PATH /usr/local/sbin

# rvm stuff that doesn't seem to work well...
# Loads the default ruby and appends stderr to stdout
#if test -z $rvm_bin_path
#  exec bash --login -c "exec fish" ^"&1"
#end
