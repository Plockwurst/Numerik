function LR = LR_decompose(A)
  n = rows(A);
  LR = A;
  for i=1: n
    for j=i+1: n
      LR(j,:) = LR(j,:)- (LR(i,i)./LR(j,i)).*LR(j,:);    ### Wir gauﬂen unser A zum R
    end
  end
  for i = 1: n
    for j = i+1: n
      LR(j,i) = A(j,i)/A(i,i);              ### jetzt das L
    end
  end
end    