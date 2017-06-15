function [x] = stuetz(n)
  for i = 0:n
    x(i+1) = -1+(2*i)/n ;
  end 
endfunction
#Berechnet die stützstellen für ein Üergebenes n 