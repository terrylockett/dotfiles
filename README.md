# Dotfiles

My configuration.

# Setup Notes
#### Requirements:
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads) --> [Regular, Bold, Italic, Bold Italic]
- Alacritty
- Tmux
- Neovim
- Ripgrep



#### Use Gnu Stow to symlink to ~/
clone the repo with submodules \
(standlone init submodules: `git submodule update --init --recursive`)
```bash
git clone --recurse-submodules https://github.com/terrylockett/dotfiles.git
cd dotfiles
```
link the modules
```bash
stow -d ./ -t ~ alacritty
stow -d ./ -t ~ nvim
stow -d ./ -t ~ tmux
```
