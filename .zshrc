export EDITOR="helix"

GOPATH=$HOME/code/go
export GOPATH=$GOPATH
export PATH="$GOPATH/bin:$HOME/.config/emacs/bin:$PATH"

export LS_COLORS="$(vivid generate catppuccin-latte)"

# 'ls' after every 'cd'
if ! (( $chpwd_functions[(I)chpwd_cdls] )); then
  chpwd_functions+=(chpwd_cdls)
fi
function chpwd_cdls() {
  if [[ -o interactive ]]; then
    emulate -L zsh
    eval ${CD_LS_COMMAND:-ls}
  fi
}

alias hx="helix"
alias ls="exa"
alias lg="lazygit"
alias scrabbler="zellij --layout scrabbler"
alias zljr="zellij --layout rust"
alias zshconf="$EDITOR ~/.zshrc"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

function pyenv() {
	source ~/code/Python/$1/bin/activate
}

function projects() {
    cd $(find ~/projects/* -type d | fzf)
}

function config() {
    helix ~/.config/$1
}

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# fish-like autocompletion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# vi-mode
set -o vi
# nice featured but fast prompt
eval "$(starship init zsh)"
