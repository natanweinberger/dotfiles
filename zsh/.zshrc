# Enable access to version control state
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'

# Set the prompt
setopt PROMPT_SUBST
PROMPT='%F{green}%T%f${vcs_info_msg_0_} %~ > '
