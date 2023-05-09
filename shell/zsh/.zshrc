if [[ -x "$HOME/.zi/bin/zi.zsh" ]]; then
    . ~/.zi/bin/zi.zsh
else
    . <(curl -sL init.zshell.dev); zzinit
    sh -c "$(curl -fsSL get.zshell.dev)" -- -i skip -b main -a annex
fi

zi light-mode for @sindresorhus/pure

zi ice wait lucid atload'_zsh_autosuggest_start'
zi light zsh-users/zsh-autosuggestions

zi light z-shell/zsh-select
zi light zsh-users/zsh-syntax-highlighting
zi light zsh-users/zsh-completions
zi light marlonrichert/zsh-autocomplete

[ -s "/Users/kecrily/.bun/_bun" ] && source "/Users/kecrily/.bun/_bun"
