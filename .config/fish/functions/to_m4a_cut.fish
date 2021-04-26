function to_m4a_cut
ffmpeg -i $argv[1] -map_metadata -1 -c:a copy -map 0:a:0 -ss $argv[2] -to $argv[3] $argv[4]
if test "$status" = 1
ffmpeg -i $argv[1] -map_metadata -1 -c:a aac -map 0:a:0 -ss $argv[2] -to $argv[3] $argv[4]
end
end
