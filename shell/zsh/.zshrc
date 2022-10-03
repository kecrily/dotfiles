source <(curl -sL git.io/zi-loader); zzinit

zi light-mode for @sindresorhus/pure

zi ice wait lucid atload'_zsh_autosuggest_start'
zi light zsh-users/zsh-autosuggestions

zi light z-shell/F-Sy-H
zi load z-shell/zsh-select
zi load zsh-users/zsh-completions
zi load marlonrichert/zsh-autocomplete

autoload -Uz promptinit; promptinit

# history
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# clean repetitive history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

zstyle ':completion:*' rehash true

setopt AUTO_PUSHD
