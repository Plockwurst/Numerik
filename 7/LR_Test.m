function LR_Test()
  for n = [10,15,20,25]
    x = ((n-1):-1:0)/n;
    V = vander(x);
    #V =  [-1,3,3;2,3,2;4,4,3]
    b = ones(n,1);
    m = round(n/2);
    for i = m : n
      b(i) = 2;
    end
    LR = LR_decompose(V);
    x = backward_solve(LR,forward_solve(LR,b));
    
  end
end

function LR = LR_decompose(A)
  n = rows(A);
  LR = A;
  for i=1: n
    for j=i+1: n
      if(LR(i,i) ~= 0)
        a = LR(j,i)/LR(i,i);
        LR(j,:) = LR(j,:)-a.*LR(i,:);    ### Wir gauﬂen unser A zum R
        LR(j,i) = a;                      ##### Jetzt noch L erg‰nzen
      end
    end
  end

end    

function y = forward_solve(LR,b)
  n = rows(LR);
  y = zeros(n,1);     #Spaltenvektor
  for j = 1: n
    y(j,1) = (b(j,1)- (LR(j,1:(j-1))*y(1:(j-1),1)))/LR(j,j);
  end
end

function x = backward_solve(LR,y)
  n = rows(LR);
  x = zeros(n,1);     #Spaltenvektor
  
  for j = 1: n
    x(j,:) = (y(j,:)-LR(j,:)*x)/LR(j,j);
  end
end