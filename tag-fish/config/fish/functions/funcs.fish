# Defined via `source`
function funcs --wraps='fortune | cs | lolcat' --description 'alias funcs fortune | cs | lolcat'
  fortune | cs | lolcat $argv; 
end
