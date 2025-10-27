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
```bash
git clone https://github.com/terrylockett/dotfiles.git
cd dotfiles
stow -d ./ -t ~ alacritty
stow -d ./ -t ~ nvim
stow -d ./ -t ~ tmux
... etc
```
