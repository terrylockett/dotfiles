# Dotfiles

My dotfiles.

### Requirements
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)  --> `pacman -S ttf-jetbrains-mono-nerd`
- Alacritty
- Tmux
- Neovim
- Ripgrep



### Usage
#### clone the repo with submodules \
```bash
git clone --recurse-submodules https://github.com/terrylockett/dotfiles.git
cd dotfiles
```
standlone init submodules: `git submodule update --init --recursive`

#### stow the modules
```bash
stow -d ./ -t ~ alacritty
stow -d ./ -t ~ nvim
stow -d ./ -t ~ tmux
```
