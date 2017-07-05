function [x,e,v] = myNewton(f,df,x0)
i = 1;
x(i) = x0 - (f(x0) / df(x0));
while i < 50
  x(i+1) = x(i) - (f(x(i)) / df(x(i)));
  e(i) = abs(x(i+1) - x(i));
  v(i) = f(x(i));
  if e(i) < 10^(-12) || v(i) == 0 
    break
  endif
  i+=1;
endwhile