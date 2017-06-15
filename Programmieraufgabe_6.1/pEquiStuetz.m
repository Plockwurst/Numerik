function [p] = pEquiStuetz(n)
  for i = 0:n 
    p(i+1) = -1 + 2*i/n;
  end
 endfunction
#gibt die equidistanten Stützstellen des Einheitsintervalls aus in Abhängigkeit von n.
#n sollte dem Grad der Quadratur entsprechen 