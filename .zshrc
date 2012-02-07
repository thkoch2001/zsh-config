# The following lines were added by compinstall

zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' add-space true
zstyle :compinstall filename '/home/ymc-toko/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

RPS1="%(?..(ret: %?%)) %~"
PS1="%h%#"

PATH=$PATH:~/bin
setopt SHARE_HISTORY

#from http://www.bash2zsh.com/essays/essay1_file_manager.html
autoload -U zsh-mime-setup
zsh-mime-setup

#from /usr/share/doc/zsh/examples/zshrc
#
# Where to look for autoloaded function definitions
#fpath=($fpath ~/.zfunc)

# Autoload all shell functions from all directories in $fpath (following
# symlinks) that have the executable bit on (the executable bit is not
# necessary, but gives you an easy way to stop the autoloading of a
# particular shell function). $fpath should not be empty for this to work.
for func in $^fpath/*(N-.x:t); autoload $func


. ~/.myenvironment
