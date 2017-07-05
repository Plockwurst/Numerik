f = @(x) cos(2*x)^2 - x^2 ;
df = @(x) -4*sin(2*x)*cos(2*x) - 2*x;
%f = @(x) x^2
%f = @(x) x
a = 0;
b = 0.75;
%a = -10;
%b = 100;
x0 = 0.75;
[xb,eb,vb] = mybisect(f,a,b);
[xn,en,vn]= myNewton(f,df,x0);
BN = 1:length(eb);
NN = 1:length(en);
figure
semilogy(BN,eb,color='b',NN,en,color='g')
legend('Bisektionsverfahren','Newton-Verfahren')
xlabel('Iterationen')
ylabel('Fehler der Verfahren')
