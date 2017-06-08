function [S,T,N] = myQuadratur1DTest()
%%%%%%%%% Numerische Integration mittels Trapezregel (T), Simson-Regel(S), und Newtons 3/8-Regel (N)
%%%        einer Funktion g(x) von a bis b
a= 0.5;
b = 1;
f = @g;

%%%%%%%
%Trapez-Regel:
%%%%%

x = zeros(2,1);                              
  for (k=1: 2)                  %  \  n+1 äquidistante Stützstellen zwischen 0.5 und 1
    x(k) =  a +(k-1)*(b-a);      %  |
  end                           %  /
  
w = [(b-a)/2; (b-a)/2];
T = myQuadratur1D(f,w,x)


%%%%%%%
%Simpson-Regel:
%%%%%%
x = zeros(3,1);                               
  for (k=1: 3)                  %  \  n+1 äquidistante Stützstellen zwischen 0.5 und 1
    x(k) =  a +(k-1)*(b-a)/2;    %  |
  end                           %  /
 
 w = ((b-a)/6).*[1;4;1];

 S = myQuadratur1D(f,w,x)
 
 %%%%%%%
 %Newton-Regel:
 %%%%%%
 
 x = zeros(4,1);                               
  for (k=1: 4)                  %  \  n+1 äquidistante Stützstellen zwischen 0.5 und 1
    x(k) =  a +(k-1)*(b-a)/3;   %  |
  end                           %  /

  w = ((b-a)/8).*[1;3;3;1];
  
  N = myQuadratur1D(f,w,x)
  
 
end


function [c] = g(x)
  
  c = 1./x.^2;
end 