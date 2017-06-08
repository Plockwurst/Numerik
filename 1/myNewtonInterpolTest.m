%MYNEWTONINTERPOLTEST Interpoliert Runge-Funktion
clear
clc
%%%%%%%%%%
pl= [-1:10^-4:1]; %%%%%%%%%%%% plot-array
n = [7,12,17];

for(k=1:length(n)) %%%%%%%%% So wird für jedes element von n einzeln geplottet
  for(i = 1:n(k)+1)
    Xe(i) = -1+2*(i-1)/n(k); %%%%%%%%%%%% äquidistant Stützstellen
    Fe(i) = 1./(1+25.*Xe(i).*Xe(i));
  end
  
    ce = myNewtonInterpol(Xe,Fe);
  Pe = newtonPolynom(Xe,ce,pl); %%%%%%%%% Pe ist jetzt fertig geplottet, muss nur noch aufgetragen werden
  
 for(i = 1:n(k)+1)
    Xt(i) = cos((2*(i-1)+1)*pi/(2*n(k)+1));   %%%%%%%%%%%% Tschebyscheff Stützstellen
    Ft(i) = 1./(1+25.*Xt(i).*Xt(i));
 end
 
 ct = myNewtonInterpol(Xt,Ft);
  Pt = newtonPolynom(Xt,ct,pl);
  
  hold on
  plot (pl,1./(1+25.*pl.*pl),"g");         
  plot (Xe,Fe,"@21");
  plot (pl,Pe,"r");
  plot (Xt,Ft,"@23");
  plot (pl,Pt,"b");
  hold off  
  xlabel ("x");
  ylabel ("f(x)");
  
  tit = strcat("n= ",num2str(n(k))); 
  
  title (tit);
  
  file = strcat('PA2-1-N', num2str(n(k)), '.fig');
  print('file');
  %savefig('filename')
 
 end