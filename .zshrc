# .zshrc

## prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green} %F{blue}%1~%f %F{red}${vcs_info_msg_0_}%f$ '

# set vars in .zsh_env_vars
source ~/.zsh_env_vars

# alias
alias v="nvim"
alias t="tmux"
alias ta="tmux attach"
alias c="clear"
alias lg="lazygit"
alias sz="source ~/.zshrc"
alias ..="cd .."
alias la="ls -la"
alias ll="ls -l"
