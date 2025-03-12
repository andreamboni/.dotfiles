# All custom configurations for zsh collect by andre amboni

# Tput colors
_WHITE=$(tput setaf 7)
_CYAN=$(tput setaf 6)
_YELLOW=$(tput setaf 3)
_GREEN=$(tput setaf 2)
_BLUE=$(tput setaf 4)
_RED=$(tput setaf 1)
_MAGENTA=$(tput setaf 5)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)

# Git branching method
parse_git_branch() {
  git branch --show-current 2>/dev/null | sed 's/\(.*\)/(\1)/'
}

# Making methods being interpreted dynamically
setopt PROMPT_SUBST

PS1='${_BOLD}${_BLUE}[%n]${_GREEN}[%~]${_RED}$(parse_git_branch) ${_MAGENTA}$ ${_WHITE}'

# Aliases
alias ll='ls -alF'
