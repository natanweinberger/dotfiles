DOTFILES=~/projects/dotfiles/zsh

# Set the default editor to vim
EDITOR=vim

# Don't split words on these special characters when navigating word-by-word
WORDCHARS='*?_-[]~=&;!#$%^(){}<>'

# Add .zsh to fpath for git autocompletion
zstyle ':completion:*:*:git:*' script $DOTFILES/git-autocomplete/git-completion.bash
fpath=($DOTFILES/git-autocomplete $fpath)
autoload -Uz compinit && compinit

# Enable access to version control state
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'

# Set the prompt
setopt PROMPT_SUBST
PROMPT='%F{green}%T%f${vcs_info_msg_0_} %~ > '

# Set up functionality to delete from cursor position to beginning of line
# Used when mapping iTerm keys Cmd + Delete
bindkey "^X\\x7f" backward-kill-line

# When iterating through history, skip continuous duplicate commands
setopt HIST_IGNORE_DUPS

# Add utility functions for Git
. $DOTFILES/git.sh

# Add directories to PATH
. $DOTFILES/../path.sh

# Load private environment variables
[ -f $DOTFILES/../private.sh ] && . $DOTFILES/../private.sh
