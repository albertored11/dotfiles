# Defined in - @ line 1
function clip --wraps='xclip -selection c' --description 'alias clip=xclip -selection c'
  xclip -selection c $argv;
end
