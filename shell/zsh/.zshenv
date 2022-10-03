. "$HOME/.cargo/env"

# bun completions
[ -s "/Users/kecrily/.bun/_bun" ] && source "/Users/kecrily/.bun/_bun"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(fnm env --use-on-cd)"

export PNPM_HOME="/Users/kecrily/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

typeset -U path PATH
path=(~/.local/bin $path)
export PATH
