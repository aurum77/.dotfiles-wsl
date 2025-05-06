[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add pip programs to path
export PATH="$PATH:$HOME/.local/bin/"
# Add symlinks to path
export PATH="$PATH:$HOME/.symlinks/"
# Add go binaries to path
export PATH="$PATH:$HOME/.go/bin/"

# Only show the last 3 directories on the path prompt
export PROMPT_DIRTRIM=3
# Download go modules to somewhere acceptable
export GOPATH=$HOME/.go
# Set editor
export EDITOR=/usr/bin/nvim
# Set npm package path
export NPM_PACKAGES=$HOME/.npm_packages
# fzf config
export FZF_DEFAULT_OPTS="
--height 100% \
--reverse \
--color=bg+:#3c3836,bg:-1,spinner:#fe8019,hl:#fe8019 \
--color=fg:#ebdbb2,header:#665c54,info:#fe8019,pointer:#fe8019 \
--color=marker:#fe8019,fg+:#ebdbb2,prompt:#bdae93,hl+:#fabd2f"

export PATH="$PATH:$NPM_PACKAGES/bin"
# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
