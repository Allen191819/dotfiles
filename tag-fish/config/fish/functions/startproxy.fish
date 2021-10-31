function startproxy --wraps='sudo systemctl stop cgproxy' --description 'alias startproxy sudo systemctl stop cgproxy'
  sudo systemctl stop cgproxy $argv; 
end
