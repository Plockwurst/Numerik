function [y] = newtonhorner(x,c,z)
# x sind die x-Stützstellen, c die Koeffizienten mit den die 
# Newtonpolynome mal genommen werden 
n = length(x);
y = c(n)*ones(size(z));
  for k = n-1:-1:1
    y = (z-x(k)).*y+c(k);
   end
end