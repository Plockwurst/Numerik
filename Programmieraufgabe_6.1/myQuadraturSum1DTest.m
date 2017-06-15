f = @(x) 1/(1+25*x**2); #RungeFkt
lit = (2/5)*atan(5); # Exakter Wert des Integrals über die Rungefkt. über -1 bis 1
tw = [0.5 0.5]; # Trapetzregel Gewichte 
sw = [ 1/6 4/6 1/6]; #Simpson Gewichte 
nw = [1/8 3/8 3/8 1/8]; # Newtongewichte 
p = pEquiStuetz(2);
a = -1;
b = 1;
format long
x = myQuadraturSum1D(f,sw,p,a,b,1000);

n =1:1000;
  for i =1:1000
    ft(i) = abs(lit - myQuadraturSum1D(f,tw,pEquiStuetz(1),a,b,i));
    fs(i) = abs(lit - myQuadraturSum1D(f,sw,pEquiStuetz(2),a,b,i));
    fn(i) = abs(lit - myQuadraturSum1D(f,nw,pEquiStuetz(3),a,b,i));
  end

 
figure
loglog(n,ft,'g',n,fs,'b',n,fn,'r')
legend('Fehler der Trapetzregel','Fehler der SimpsonRegel','Fehler der Newton(3/8)Regel')
xlabel('n')
ylabel('Fehler')