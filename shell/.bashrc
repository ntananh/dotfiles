alias cls="clear"
alias lg="winpty lazygit"
alias nvim="winpty nvim"
alias fzf="winpty fd"
alias fzf="winpty fzf"
alias ls='ls -al --color=auto'

# fzf ctrl-r and alt-c behavior
export FZF_DEFAULT_COMMAND="fd --follow --hidden --exclude .git"
export FZF_DEFAULT_OPTS="--multi --border --no-height --extended"
export FZF_COMPLETION_OPTS='--border --info=inline'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND -tf"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND -td"

export TERM=xterm-256color
export VISUAL=neovide
export EDITOR="$VISUAL"
export PATH=/c/Perl/bin:$PATH

