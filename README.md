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
cd ~/
git clone https://github.com/terrylockett/dotfiles.git
cd dotfiles
stow .
```

#### Environment variables go in:
```
~/.zsh_env_vars
```
