function [m,b] = komp(x,y)
n = length(x);
  for i=1:(n-1)
    m(i) = (y(i+1)-y(i))/(x(i+1)-x(i)); #berechnet ddie steigung 
    b(i) = (y(i)-m(i)*x(i)); #berechnet den y Achsenabschnitt
  end
endfunction