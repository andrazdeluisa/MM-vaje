function y = ordinata_bez(b,t)
% vrne ordinato smernega vektorja bezierove krivulje
    d = deCasteljau(b,t);
    y = d(2);
end