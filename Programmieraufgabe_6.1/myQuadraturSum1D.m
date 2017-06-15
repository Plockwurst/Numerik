function [v] = myQuadraturSum1D(f,w,p,a,b,N)
n = length(w); #Anzahl der Gewichte = Anzahl der Stützstellen
h = (b-a)/N; 
  for i = 1: N  #Summiert über alle Teilintervalle 
    Im = a + (i-1)*h; #untere Grenze des Teilintervalls 
    Ip = a + i*h; #obere Grenze des Teilintervalls
    for j = 1:n #Speichert h*Gewicht * f(Stützstelle) in den Vektor v
      y(j) = h*w(j) * f(((Ip-Im)/2)*p(j) + (Ip +Im)/2);
    end 
  v(i)= sum(y); #Summiert alle Elemente der Quadratur (also Elemente des Vektors v
  end
  v = sum(v); #Gibt Endergebniss aus 
endfunction 