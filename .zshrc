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
alias dn='cd ~/Downloads'
alias cdw='cd ~/Workspace'
alias cdww='cd ~/Workspace/websites'

## Tools - Shortcuts
alias vi="nvim"
alias vim="nvim"

## Copy/Paste
alias copy="tr -d '\n' | xclip" 

### Grep Stuff
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## LS Color Changes
export colorflag="--color=always"

alias l='exa -lF ${colorflag}'
alias la='exa -laF ${colorflag}'
alias lsd='exa -lFD ${colorflag}'
alias ls='command exa ${colorflag}'
alias lx='exa -ax ${colorflag}'

# Add Flags
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'
alias free='free -m'
alias lynx='lynx --cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias vifm='~/.config/vifm/scripts/vifmrun'

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
export HISTCONTROL=ignoredups:erasedups
export EDITOR="nvim"
export VISUAL="nvim"

export PYTHONENCODING='utf-8'

export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
export HISTSIZE='32768'
export HISTFILESIZE="${HISTSIZE}"
export HISTCONTROL='ignoreboth'

export LANG=en_US.UTF-8

# - ZSH OPTIONS
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

setopt NO_CASE_GLOB
setopt EXTENDED_HISTORY
setopt AUTO_CD
setopt COMPLETE_ALIASES
ZSH_DISABLE_COMPFIX="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
	git
)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

zstyle ':completion:*' menu select

source $ZSH/oh-my-zsh.sh

# - SHOPT -
# shopt -s autocd
# shopt -s cdspell
# shopt -s cmdhist
# shopt -s dotglob
# shopt -s histappend
# shopt -s expand_aliases
# shopt -s checkwinsize

# - COLORS -
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)

# - SET VI MODE -
set -o vi
# bind -m vi-command 'Control-l: clear-screen'
# bind -m vi-insert 'Control-l: clear-screen'

#  - PATH -
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,zprompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

## CUSTOM PATHS
GEM_HOME="$(ruby -e 'puts Gem.user_dir')"

export PATH="$PATH:$GEM_HOME/bin"
export PATH=$PATH:/Users/rzachary/tools/google-cloud-sdk/

### - GO LANG DEV

export GOBIN="$HOME/.local/go/bin"
export GOPATH="$HOME/.local/go"

export PATH="$PATH:$HOME/.local/go/bin"

## PATH SET
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi


