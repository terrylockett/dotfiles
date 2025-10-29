# Dotfiles

My dotfiles.

### Requirements
- GNU Stow 2.4.1+

### Setup
1. clone the repo
    ```bash 
    git clone --recurse-submodules https://github.com/terrylockett/dotfiles.git
    ```
> [!NOTE]
> The git submodules need to be cloned for tmux styling to work.\
> Standalone init submodules: `git submodule update --init --recursive`

### Usage
1. navigate to dotfiles dir 
    ```bash
    cd dotfiles
    ```
2. stow the package 
    ```
    stow <package>
    ```


### Misc
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)  --> `pacman -S ttf-jetbrains-mono-nerd`
