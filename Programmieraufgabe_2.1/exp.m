function y = exp(x,i)
s =0;
for a=0:i
s+= x^a / factorial(a);
end
y= s;
end

