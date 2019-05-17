function c = bezier_der(b,t)
    %izracuna tangentni vektor na bezierjevo krivuljo v t
    
    n = length(b);
    dp = b(:,2:end)-b(:,1:(end-1));
    c = (n-1)* deCasteljau(dp,t);
end