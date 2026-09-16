export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gallois"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.secrets ] && source ~/.secrets

export EDITOR=nvim

export PATH=$HOME/.asdf/shims:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export GOPATH="$(go env GOPATH)"
export PATH=$GOPATH/bin:$PATH
export PATH=/home/chase/.local/bin:$PATH
export PATH=/home/chase/.opencode/bin:$PATH
export PATH=/home/chase/Projects/wingman/clients/tui/wingcode/dist:$PATH
export PATH=/home/chase/.wingman/bin:$PATH
export PATH=/home/chase/.bun/bin:$PATH
export PATH=$HOME/AppImages:$PATH

alias ff=fastfetch
alias lg=lazygit
alias ld=lazydocker
alias open=xdg-open
alias task=go-task
alias oc=opencode2

export PATH=/home/chase/.wingman/bin:$PATH

bestla() {
	ssh -N -L "${1}:localhost:${1}" chase.rensberger@bestla
}

t7mount() {
	udisksctl mount -b /dev/disk/by-uuid/58D5-6AB1
}

t7eject() {
  local partition=/dev/disk/by-uuid/58D5-6AB1
  local disk="/dev/$(lsblk -no PKNAME "$partition")"

  udisksctl unmount -b "$partition" &&
    udisksctl power-off -b "$disk"
}

