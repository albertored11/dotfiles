set -gx GPG_TTY (tty)

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty &>/dev/null
    end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/herbort/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

