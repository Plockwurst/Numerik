#Teil a)
x = [0 1 2];
y = exp(x);
xEval = 0 : 0.5 : 2;
c = myPiecewiseInterpol(x,y,xEval);
c #gewünschter Output
# Teil b)
f1 = @(x) 1./(1+25.*x.^2);
f2 = @(x) exp(x);
g = stuetz(100); #ist chi also das gitter 

  for i = 1:7
    n = 2**i;
    disp('Anzahl der Stützstellen:')
    n+1
    disp('Fehler der stückweisen Interpolation für die Runge Funktion:')
    es = max(abs(f1(g) - myPiecewiseInterpol(f1(stuetz(n)),stuetz(n),g)));
    es
    disp('Fehler der polynomielle Interpolation für die Runge Funktion:')
    ei = max(abs(f1(g) - newtonhorner(stuetz(n),newtonkoeffi(stuetz(n),f1(stuetz(n))),g)));
    ei
    disp('Fehler der stückweisen Interpolation für die Expotential Funktion:')
    es = max(abs(f2(g) - myPiecewiseInterpol(f2(stuetz(n)),stuetz(n),g)));
    es
    disp('Fehler der polynomielle Interpolation für die Expotential Funktion:')
    ei = max(abs(f2(g) - newtonhorner(stuetz(n),newtonkoeffi(stuetz(n),f2(stuetz(n))),g)));
    ei
  end

disp('Fehler der stückweisen Interpolation für 1000 Stützstellen:')
    n=1000;
    es = max(abs(f2(g) - myPiecewiseInterpol(f2(stuetz(n)),stuetz(n),g)));
    es
    
#Plot für n = 16
a = stuetz(16)
Rnewtony = newtonhorner(a,newtonkoeffi(a,f1(a)),a); #newtoninterpol. für rungefkt
Rsinterpy = myPiecewiseInterpol(f1(a),a,a);  #stückweise interpol für rungefkt
Enewtony = newtonhorner(a,newtonkoeffi(a,f2(a)),a); #newton interpol für exp
Esinterpy = myPiecewiseInterpol(f2(a),a,a);  #stückweise interpol für exp

figure 
ax1 = subplot(1,2,1);
plot(a,Enewtony,a,f2(a))
ax2 = subplot(1,2,2); 
plot(a,Esinterpy,a,f2(a))
figure
ax3 = subplot(1,2,1);
plot(a,Rnewtony,a,Rsinterpy,a,f1(a))
ax4 = subplot(1,2,2);
plot(a,Rsinterpy,a,f1(a))
