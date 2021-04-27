# Defined in - @ line 1
function pacautorm --description 'alias pacautorm=sudo pacman -Rs (pacman -Qtdq)'
	sudo pacman -Rs (pacman -Qtdq) $argv;
end
