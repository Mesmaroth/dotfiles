source /usr/share/cachyos-fish-config/cachyos-config.fish

# Aliases
alias fishc="nvim ~/.config/fish/config.fish"
alias fishs="source ~/.config/fish/config.fish && echo Source Fish config ... OK"
alias nvimc="cd ~/.config/nvim && nvim"
alias ghosttyc="nvim ~/.config/ghostty/config"

zoxide init fish | source

set -gx VCPKG_ROOT $HOME/vcpkg
