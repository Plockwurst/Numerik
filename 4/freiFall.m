clear

y = [2.8; 6.3; 10; 11.5; 10.3; 6.8];
t = [0.2; 0.5; 1; 1.5; 2; 2.5];

%t =[1;1.5;2;2.5;3]
%y=[50;100;120;130;125]

%o = ones(length(y),1)

A =[t.^2,t];

At = transpose(A);

At*A

At*y

b = inverse(At*A)*At*y

x=[0:10^(-2):3];
plot(x,b(2).*x+b(1).*x.^2,"g", t,y, "@21")