n = 10;
a = 1:n;
A = diag(a);
A = A - diag(ones(n-1,1),-1) + diag(ones(n-2,1),-2);
A = A + 4*triu(ones(n),1);

