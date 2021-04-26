function to_m4a
ffmpeg -i $argv[1] -map_metadata -1 -c:a copy -map 0:a:0 $argv[2]
if test "$status" = 1
ffmpeg -i $argv[1] -map_metadata -1 -c:a aac -map 0:a:0 $argv[2]
end
end
