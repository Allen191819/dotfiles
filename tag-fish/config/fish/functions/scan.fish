function scan --wraps='sudo arp-scan -interface=eno1 -localnet' --description 'alias scan sudo arp-scan -interface=eno1 -localnet'
  sudo arp-scan -interface=eno1 -localnet $argv; 
end
