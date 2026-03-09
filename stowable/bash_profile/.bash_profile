[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add flutter to PATH
export PATH="$PATH:$HOME/.apps/flutter/bin"
# Add pip programs to path
export PATH="$PATH:$HOME/.local/bin/"
# Add symlinks to path
export PATH="$PATH:$HOME/.symlinks/"
# Add go binaries to path
export PATH="$PATH:$HOME/.go/bin/"
# Global NPM packages
export PATH="$PATH:$HOME/.npm_pkg/bin"

# Only show the last 3 directories on the path prompt
export PROMPT_DIRTRIM=3
# Download go modules to somewhere acceptable
export GOPATH=$HOME/.go
# Set editor
export EDITOR=/usr/bin/nvim
# fzf config
export FZF_DEFAULT_OPTS="
--height 100% \
--reverse \
--color=bg+:#3c3836,bg:-1,spinner:#fabd2f,hl:#fabd2f \
--color=fg:#ebdbb2,header:#665c54,info:#83a598,pointer:#83a598 \
--color=marker:#fe8019,fg+:#ebdbb2,prompt:#bdae93,hl+:#fabd2f"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
