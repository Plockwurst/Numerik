function [c] = myNewtonInterpol(x,f)
  %MYNEWTONINTERPOL berrechnet Koeffizienten des Interpolationspolynoms nach Newton
  	c(1) = f(1);  
	  n = length(x);
    
    %ci=[x1,xi]f
    %[xi,..xj]f=([xi+1,..xj]f-[xi,....xj-1]f)/(xj-xi)
 
for k = 1 : n-1
   d(k, 1) = (f(k+1) - f(k))/(x(k+1) - x(k)); 
   % d(1,1) = (f(2)-f(1))/(x(2)-x(1)) = c(2)
   %berechnet 1. Spalte der Matrix d, in deren erster zeile bis auf c(1) alle c(i) stehen
   
end
for j = 2 : n-1
   for k = 1 : n - j
      d(k, j) = (d(k+1, j - 1) - d(k, j - 1))/(x(k+j) - x(k));
   end
   %berechnet die Matrix "von links nach rechts"
end

for j = 2 : n
   c(j) = d(1, j-1);
end
   