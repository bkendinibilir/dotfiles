alias vi=vim
alias p="pacman --color auto"
alias y="yay --color auto"
alias chrome=google-chrome-stable

export EDITOR=vim
export BROWSER="google-chrome-stable --profile-directory=Default"
export PBCLI=pb-docker
export PATH=/home/segfault/bin:$PATH

# use GTK2 for SWT cause of bugs with hidpi
export SWT_GTK3=0

source ~/.secret/.profile 
