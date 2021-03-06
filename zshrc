source ~/.zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle cpanm
antigen bundle docker
antigen bundle perl
antigen bundle sudo

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme candy

# Tell antigen that you're done.
antigen apply
