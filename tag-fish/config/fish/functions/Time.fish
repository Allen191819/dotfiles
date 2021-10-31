function Time --wraps=hyperfine --description 'alias Time hyperfine'
  hyperfine $argv; 
end
