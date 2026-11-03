if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

# ENV
set -gx EDITOR nvim
set -gx BROWSER chromium
set -gx XCURSOR_THEME Bibata-Modern-Classic
set -gx XCURSOR_SIZE 24

fish_add_path /home/zoxide/.local/share/
fish_add_path /home/zoxide/.local/lib/
fish_add_path /home/zoxide/.local/share/keyrings/

# ALIAS
alias nv "$EDITOR"
alias vi "$EDITOR"
alias v "$EDITOR"

pfetch
