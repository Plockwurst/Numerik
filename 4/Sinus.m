clear

y = [1.1; 3.9; 11.2; -9.2];
t = [0; pi/4; pi/2; 3*pi/2];

%t =[1;1.5;2;2.5;3]
%y=[50;100;120;130;125]

o = ones(length(y),1)

A =[sin(2*t),sin(t), o];

At = transpose(A);

At*A

At*y

b = inverse(At*A)*At*y

f = sqrt(sum(abs(b(1)+b(2)*sin(t)+b(3)*sin(2.*t)-y).^2))


x =[0:10^(-2):9];
plot(t,y,"@21", x, b(1)+b(2)*sin(x)+b(3)*sin(2.*x))