# Defined via `source`
function nefl --wraps='neofetch | lolcat' --description 'alias nefl neofetch | lolcat'
  neofetch | lolcat $argv; 
end
