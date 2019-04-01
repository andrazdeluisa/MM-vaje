function dp = odvod(p)
    % vrne vektor koeficientov odvoda polinoma p
    n = length(p);
    dp = zeros(1,n-1);
    
    for i = 1:n-1
        dp(i) = p(i)*(n-i);
    end
end

