# Set up the prompt
export ZSH=/home/jenbi/.oh-my-zsh
export TERM="xterm-256color"
export ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

#autoload -Uz promptinit
#promptinit
#prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

########### CUSTOM #########

# theme
#ZSH_THEME="3den"
ZSH_THEME="agnoster"

# support 256 colour schemed
export TERM="xterm-256color"

# sanity check rm *
setopt RM_STAR_WAIT

# bash style comments in command line
setopt interactivecomments

# spellcheck
# setopt CORRECT

# aliases
alias zshconfig='vim ~/.zshrc'
alias vimconfig='vim ~/.vimrc'
alias i3config='vim ~/.config/i3/config'
alias sshpi='ssh pi@pi'
alias sshdev='ssh jenbi@dev'
alias eud='cd ~/Learning/kernel_dev/Eudyptula'
# setup virtualenvwrapper
alias setupvenv="source /usr/local/bin/virtualenvwrapper.sh"

# env variables
export MINICOM="-m -c on"
export WORKON_HOME=~/.envs



PATH=$PATH:/home/jenbi/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 B641F44D-F0EF-F343-57E4-CE0F0E7E0CDF
