# Defined via `source`
function r --wraps=ranger --wraps=bash\ -c\ \'.\ ranger\;\ pwd\ \>\ /tmp/rcd\'\;\ cd\ \(cat\ /tmp/rcd\) --description alias\ r=bash\ -c\ \'.\ ranger\;\ pwd\ \>\ /tmp/rcd\'\;\ cd\ \(cat\ /tmp/rcd\)
  bash -c '. ranger; pwd > /tmp/rcd'; cd (cat /tmp/rcd) $argv; 
end
