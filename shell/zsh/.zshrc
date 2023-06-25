if [[ -x "$HOME/.zi/bin/zi.zsh" ]]; then
    . ~/.zi/bin/zi.zsh
else
    . <(curl -sL init.zshell.dev); zzinit
    sh -c "$(curl -fsSL get.zshell.dev)" -- -i skip -b main -a annex
fi

zi light-mode for @sindresorhus/pure
zi light zsh-users/zsh-syntax-highlighting
zi light zsh-users/zsh-autosuggestions
zi light zsh-users/zsh-completions

zi snippet OMZP::gpg-agent

[ -s "/Users/kecrily/.bun/_bun" ] && source "/Users/kecrily/.bun/_bun"
