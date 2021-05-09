# load antibody plugins
source ~/.zsh_plugins.sh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# don't nice background tasks
setopt NO_BG_NICE
setopt NO_HUP
setopt NO_LIST_BEEP

# allow functions to have local options
setopt LOCAL_OPTIONS

# allow functions to have local traps
setopt LOCAL_TRAPS

# share history between sessions ???
setopt SHARE_HISTORY

# add timestamps to history
setopt EXTENDED_HISTORY
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD

# adds history
setopt APPEND_HISTORY

# adds history incrementally and share it across sessions
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# don't record dupes in history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt HIST_EXPIRE_DUPS_FIRST

# dont ask for confirmation in rm globs*
setopt RM_STAR_SILENT

# pass bad match to command
# fixes git co HEAD^ -> zsh: no match found
setopt NO_NOMATCH

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Virtualenvwrapper things
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper
source /usr/bin/virtualenvwrapper_lazy

#eval "$(rbenv init -)"

# The following lines were added by compinstall
zstyle :compinstall filename '/home/jcaamano/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#source <(antibody init)

# OBS
alias isc="osc -A https://api.suse.de"
