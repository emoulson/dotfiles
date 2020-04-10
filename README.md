# Dotfiles

## Usage
1. Restore your safely backed up ssh keys to `~/.ssh/`
    1. Alternatively, generate new ssh keys, and add these to your GitHub account
2. Install Homebrew and git

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install git
  ```
3. Clone this repository

  ```
  git clone git@github.com:rkalis/dotfiles.git
  ```
4. Run the `bootstrap.sh` script
    1. Alternatively, only run the `setup.sh` scripts in specific subfolders if you don't need everything
5. Point the Alfred preference sync to the right folder

## Subfolders

### Git
* The `.gitconfig` file contains my config info for git
* The `.gitignore_global` is pretty generic

### macOS
* Sets up a whole ton of macOS-specific things

###  Packages
This folder is a collection of the programs and utilities I use frequently. It includes homebrew packages and Code extensions

### Fish (fish/)
* setup.sh - Symlinks all fish files to their corresponding location in `~/.config/fish/`
* config.fish - Global fish configuration (.fishrc)
* completions/ - fish completions
* functions/ - functions installed or made by me or fisher

### Git (git/)
* setup.sh - Symlinks all git files to `~/`
* .gitignore_global - Contains global gitignores, such as OS-specific files and
several compiled files
* .gitconfig - Sets several global Git variables

### Helper Scripts (scripts/)
* functions.sh - Contains helper functions for symlinking files and printing
  progress messages

### Code (vscode/)
* setup.sh - Symlinks the settings.json file to `~/Library/Application Support/Code/User`
* `settings.json` - Contains user settings for Visual Studio Code
* `keybindings.json` - Contains custom keybindings that I've set

### Ruby (ruby/)
* Sets up RVM and installs the latest stable Ruby and Rails

### Rust (rust/)
* Downloads and runs Rustup, the tool to set up Rust and Cargo

## Thanks
* Thanks to [gnapse](https://github.com/gnapse/), from whom these were almost wholly derived.
* Thanks to [mathiasbynens](https://github.com/mathiasbynens) who created the macOS config file that I based mine on.
* Thanks to [Kelly Fox](https://github.com/kfox/) whose dotfiles are awesome and provided a lot of inspiration, even though he doesn't know it.
