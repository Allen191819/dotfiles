function stopproxy --wraps='sudo systemctl stop cgproxy' --description 'alias stopproxy sudo systemctl stop cgproxy'
  sudo systemctl stop cgproxy $argv; 
end
