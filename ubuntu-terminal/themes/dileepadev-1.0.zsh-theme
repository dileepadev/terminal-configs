# Simple Zsh theme

# Get the current directory
local current_dir='%~'

# Get Git branch (if any)
local git_branch='${$(git symbolic-ref --short HEAD 2> /dev/null):-}'

# Build prompt
PROMPT="%F{cyan}${current_dir}%f"

# If inside a Git repo, show branch
if [[ -n $git_branch ]]; then
  PROMPT+=" %F{yellow}($git_branch)%f"
fi

# Add prompt symbol
PROMPT+=" %F{green}➤%f "

# Shorten the right prompt (optional)
RPROMPT="%F{blue}%*%f"
