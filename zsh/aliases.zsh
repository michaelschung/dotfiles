# getting here
alias create_alias="vim $ZSH_CUSTOM/aliases.zsh"

# specific paths
alias recurse="cd /Users/michaelchung/Documents/code/recurse-center"

# better defaults
alias mv="mv -i"	# -i prompts before overwrite
alias mkdir="mkdir -p"	# -p make parent dirs as needed
alias df="df -h"       	# -h prints human readable format
alias cat="bat --paging=never"  # cat w/ syntax highlighting

# python
alias vcreate="python3 -m venv .venv"
alias vactivate="source .venv/bin/activate"
alias py="python3"
alias pip="pip3"
