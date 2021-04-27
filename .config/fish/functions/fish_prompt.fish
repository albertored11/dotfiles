function fish_prompt
set_color 7c60a3 && tput bold && printf '['
set_color normal && tput bold && printf (basename (prompt_pwd))
set_color 7c60a3 && tput bold && printf "]\$ "
set_color normal
end
