function new-sh-script
echo "#!/usr/bin/env bash" > $argv[1]
chmod +x $argv[1]
end
