. "$HOME/.cargo/env"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh --cmd cd)"
eval "$(fnm env --use-on-cd)"
export PNPM_HOME="/Users/kecrily/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
eval "$(github-copilot-cli alias -- "$0")"
