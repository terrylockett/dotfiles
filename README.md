# Dotfiles

My dotfiles.

### Requirements
- GNU Stow 2.4.1+
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)  --> `pacman -S ttf-jetbrains-mono-nerd`
- Alacritty
- Tmux
- Neovim
- Ripgrep



### Usage
#### clone the repo with submodules
```bash
git clone --recurse-submodules https://github.com/terrylockett/dotfiles.git
cd dotfiles
```
Standalone init submodules: `git submodule update --init --recursive`

#### stow the packages
```bash
stow alacritty
```
