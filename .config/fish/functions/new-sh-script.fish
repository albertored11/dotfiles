function new-sh-script
    if test (count $argv) -eq 1
        echo "#!/usr/bin/env bash" > $argv[1] && chmod +x $argv[1]
    else
        echo "Exactly 1 argument is needed" >&2
        return 1
    end
end
