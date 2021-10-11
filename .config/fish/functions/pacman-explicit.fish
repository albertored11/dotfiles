# Defined via `source`
function pacman-explicit --wraps='bash -c "comm -13 <(pacman -Qgq base-devel) <(pacman -Qqen | sort)"' --description 'alias pacman-explicit=bash -c "comm -13 <(pacman -Qgq base-devel) <(pacman -Qqen | sort)"'
  bash -c "comm -13 <(pacman -Qgq base-devel) <(pacman -Qqen | sort)" $argv; 
end
