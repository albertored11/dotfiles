function launch
if test (count $argv) -gt 0
if test (command -v $argv)
command $argv &> /dev/null & disown
else
command $argv
end
else
echo "usage: launch command"
echo "Launch command supressing all output and disowning process"
end
end
