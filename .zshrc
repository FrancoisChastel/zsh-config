export EDITOR=`which nvim`
export VISUAL=`which nvim`
export FZF_BASE=`which fzf`

source $(brew --prefix)/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle npm

export FZF_BASE=$(brew --prefix)/opt/fzf
antigen bundle fzf

# nvm integration
export NVM_AUTO_USE=true
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# direnv
eval "$(direnv hook zsh)"

# Aliases
alias cat='bat'
alias top='htop'
alias vim='nvim'
