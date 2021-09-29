function fish_prompt
set_color 88C0D0 && tput bold && printf '['
set_color normal && tput bold && printf (basename (prompt_pwd))
set_color 88C0D0 && tput bold && printf "]\$ "
set_color normal
end
