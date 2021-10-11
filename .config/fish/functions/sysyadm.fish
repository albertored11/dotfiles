function sysyadm --wraps='sudo yadm -Y /etc/yadm' --description 'alias sysyadm=sudo yadm -Y /etc/yadm'
  sudo yadm -Y /etc/yadm $argv; 
end
