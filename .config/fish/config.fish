if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

# ENV
set -gx EDITOR nvim
set -gx BROWSER chromium
set -gx XCURSOR_THEME Bibata-Modern-Classic
set -gx XCURSOR_SIZE 24

# ALIAS
alias nv "$EDITOR"
alias vi "$EDITOR"
alias v "$EDITOR"

pfetch
