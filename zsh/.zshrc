export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gallois"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.secrets ] && source ~/.secrets

export EDITOR=nvim
alias vim=nvim

export PATH=$HOME/.asdf/shims:$PATH
export GOPATH=$HOME/.asdf/installs/golang/$(go version | grep -oP 'go\K[0-9.]+')
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=/home/chase/.local/bin:$PATH
export PATH=/home/chase/.opencode/bin:$PATH
export PATH=/home/chase/Projects/wingman/clients/tui/wingcode/dist:$PATH
export PATH=/home/chase/.wingman/bin:$PATH
export PATH=/home/chase/.bun/bin:$PATH

alias ff=fastfetch
alias lg=lazygit
alias open=xdg-open
alias task=go-task
alias oc=opencode

# wingman
export PATH=/home/chase/.wingman/bin:$PATH
