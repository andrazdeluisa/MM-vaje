function y = ordinata_odvoda_bez(b,t)
% vrne ordinato smernega vektorja bezierove krivulje
    d = bezier_der(b,t);
    y = d(2);
end

