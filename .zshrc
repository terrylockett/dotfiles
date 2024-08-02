# .zshrc

## simple prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green} %F{blue}%1~%f %F{red}${vcs_info_msg_0_}%f$ '


source ~/.zsh_env_vars

if [ -f ~/.zshrc_work ]; then
	source ~/.zshrc_work
fi

# Fix TERM when for ssh sessions
alias ssh='TERM=xterm-color ssh'

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

#TODO move to permanent home.
alias google-java-format="java -jar ~/Downloads/google-java-format-1.22.0-all-deps.jar"


# 1password completion
# eval "$(op completion zsh)"; compdef _op op

# Load Angular CLI autocompletion.
# source <(ng completion script)

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/terry/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
