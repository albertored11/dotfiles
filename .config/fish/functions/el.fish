# Defined in - @ line 1
function el --wraps='exa -l' --description 'alias el=exa -l'
  exa -l $argv;
end
