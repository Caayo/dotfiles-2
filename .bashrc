#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


alias c='clear'
alias nf='neofetch'
alias pf='pfetch'
alias ls='exa -al'
alias shutdown='systemctl poweroff'
alias v='nvim'
alias wifi='nmtui'
alias dot='cd $HOME/dotfiles'


alias Qtile='startx'


alias gi="git init"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gpauto="git pull --rebase --autostash"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"


alias rnvim='v $HOME/dotfiles/neovim/init.vim'
alias rbash='v $HOME/dotfiles/.bashrc'
alias sbash='source $HOME/dotfiles/.bashrc'

