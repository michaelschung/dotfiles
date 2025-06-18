# getting here
alias create_alias="vim $ZSH_CUSTOM/aliases.zsh"

# ===== pinpoint =====
alias ppt="cd $HOME/pinpoint"
alias backend="cd $HOME/pinpoint/pinpoint-monorepo"
alias frontend="cd $HOME/pinpoint/pinpoint-frontend"
alias frontend-launch="frontend && npm run dev"
#alias backend-launch="backend && backendLaunch"
alias backend-launch="backend && sh ../scripts/backend_launch.sh"
alias backend-shutdown="backend && sh ../scripts/backend_shutdown.sh"

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
