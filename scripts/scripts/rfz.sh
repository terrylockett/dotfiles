#!/usr/bin/env bash

# "Inspired" by:
# https://github.com/junegunn/fzf/blob/master/ADVANCED.md#using-fzf-as-interactive-ripgrep-launcher

# 1. Search for text in files using Ripgrep
# 2. Interactively narrow down the list using fzf
# 3. Open the file in neovim or github
#
# This requires terry-uils/giturl to be installed
# Link: https://github.com/terrylockett/terry-utils?tab=readme-ov-file#giturl
#
rg --color=always --line-number --no-heading --smart-case "${*:-}" |
	fzf --ansi \
	--color "hl:-1:underline,hl+:-1:underline:reverse" \
	--delimiter : \
	--preview 'bat --color=always {1} --highlight-line {2}' \
	--preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
	--bind 'enter:become(nvim {1} +{2})' \
	--bind 'ctrl-r:become(giturl -o {1})'

