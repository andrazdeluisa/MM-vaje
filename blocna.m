function A = blocna(n)
    % vrne n x n matriko bloène oblike
        
    A = -4*diag(ones(n*n,1)) + diag(ones(n*(n-1),1),-n) + diag(ones(n*(n-1),1),n);
    obdiagonala = ones(n*n-1,1);
    obdiagonala(n:n:n*n-1) = 0;
    A = A + diag(obdiagonala,-1) + diag(obdiagonala,1);
    end

