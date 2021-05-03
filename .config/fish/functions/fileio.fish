function fileio
curl -sF "file=@$argv[1]" https://file.io | jq -Mr '."link"'
end
