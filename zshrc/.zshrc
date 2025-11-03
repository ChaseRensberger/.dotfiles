export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gallois"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/.asdf/shims:$PATH
export PATH=/home/chase/.local/bin:$PATH

alias ff=fastfetch
alias open=xdg-open
