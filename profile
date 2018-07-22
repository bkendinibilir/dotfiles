alias vi=vim
alias p="pacman --color auto"
alias y="yay --color auto"
alias chrome=google-chrome-stable

export DEFAULT_USER=$(whoami)
export EDITOR=vim
export BROWSER="google-chrome-stable --profile-directory=Default"
export PBCLI=pb-docker
export GOPATH=$HOME/go
export PATH=/home/segfault/bin:$GOPATH/bin:$PATH

export PBCLI=pb-docker

# use GTK2 for SWT cause of bugs with hidpi
export SWT_GTK3=0

source ~/.secret/.profile 
