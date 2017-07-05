function [x,e,v]= mybisect(f,a,b)
x(1) = 0.5*(a+b);
i = 1;
  while i < 9999
    v(i) = f(x(i));
    if f(a)*f(x(i)) < 0 
      b=x(i);
    endif
    if f(x(i))*f(b) < 0
      a = x(i);
    endif
    x(i+1)=0.5*(a+b);
    e(i) = abs(x(i+1)-x(i));
    if e(i) < 10^(-12)
       break
    end  
    if f(x(i)) == 0
       break
    endif
    i+=1;
  endwhile

endfunction