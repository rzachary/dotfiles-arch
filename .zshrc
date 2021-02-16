#	 ______ _      ______
#	 | | \ | |    |___  /
#	 | |_/ / |       / /    - Rickey Zachary
#	 |    /| |      / /     - website: https://rickeyzachary.com
#	 | |\ \| |____./ /___   - twitter: zachary_rickey | github: rzachary (https://github.com/rzachary)
#	 |_| \_\_____/\_____/
#
#
# A config for Bash.


# - Aliases -
### Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias ~='cd ~'
alias -- -='cd --'

## Navigation - Shortcuts
alias d='cd ~/Documents'
alias dp='cd ~/Dropbox'
alias dl='cd ~/Downloads'
alias cdw='cd ~/Workspace'
alias cdww='cd ~/Workspace/websites'

## Tools - Shortcuts
alias vi="vim"

## Copy/Paste
alias copy="tr -d '\n' | xclip" 

### Grep Stuff
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## LS Color Changes
colorflag="--color"
export LS_COLORS=''

alias l="ls -lF ${colorflag}"
alias la="ls -lAF ${colorflag}"
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
alias ls="command ls ${colorflag}"

# Add Flags
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'
alias free='free -m'
alias lynx='lynx --cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='./.config/vifm/scripts/vifmrun'

# reporting
alias syserrors="sudo journalctl -p 3 -xb"
alias sysderrors="sudo systemctl --failed"

alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# TODO : Alias for viewing X11 errors

# Really Good Stuff
alias curl='curl -L'

# - EXPORTS -
export TERM="xterm-256colors"
export HISTCONTROL=ignoredups:erasedups
export EDITOR="vim"
export VISUAL="nvim"

export PYTHONENCODING='utf-8'

export HISTSIZE='32768'
export HISTFILESIZE="${HISTSIZE}"
export HISTCONTROL='ignoreboth'

# - FUNCTIONS -
## Function Shortcuts



# - SHOPT -
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s histappend
shopt -s expand_aliases
shopt -s checkwinsize

#  -PATH -


