x = single(0.8 : 1e-4 : 1.2);
y = (x-1).^8;
F =@(x) (((((((x-8).*x+28).*x-56).*x+70).*x-56).*x+28).*x-8).*x+1 ;
%plot(x,y);
%ylabel("Polynom")
plot(x,F(x))
ylabel("Horner")
xlabel("x")
