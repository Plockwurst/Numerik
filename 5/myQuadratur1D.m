function [c] = myQuadratur1D(f,w,x)
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % MYQUADRATUR1D  liefert Numerisches Integral über Interval, welches von x abgedeckt wird,
  %                         f = integrierte Funktion (function_handle),
  %                         w = Quadraturgewichte (array)
  %                         x = Quadraturpunkte (array)
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  c = sum(w.*f(x));
end