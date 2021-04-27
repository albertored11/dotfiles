set -gx GPG_TTY (tty)

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty &>/dev/null
    end
end
