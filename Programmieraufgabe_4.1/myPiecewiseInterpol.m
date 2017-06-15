function [c] = myPiecewiseInterpol(x,y,xEval)
l = length(xEval); #bestimmt die Anzahl der xEval werte 
n = length(x);  #bestimmt die Anzahl der x Werte 
[m,b] = komp(x,y); #berechnet steigung und y Achsenabschnitt der verbindungsgeraden 
  for k = 1:l # läuft alle xEval werte ab 
    for i=1:n-1 # läuft über alle x Werte 
      if (xEval(k) == x(i)) # ist x Wert gleich xEval ist c = dem y wert an der stelle
       c(k) = y(i);
       break
      endif
      if (xEval(k) <= x(i+1)) # liegt xEval dazwischen muss die gerade bestimmt werden und der wert für xEval darauf bestimmt werden 
       c(k) = m(i)*xEval(k)+b(i);
       break
      endif
    end
  end
  
endfunction
  
