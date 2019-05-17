function tocka = deCasteljau(b,t)
% DE_CASTELJAU izracuna tocko na Bezierovi krivulji pri parametru t
% s pomocjo de Casteljauovega algoritma.
% Stolpci matrike b so kontrolne tocke Bezierove krivulje.

    for i=1:length(b)
       for j=1:(length(b)-i)
           b(1,j) = (1-t)*b(1,j) + t*b(1,j+1);
           b(2,j) = (1-t)*b(2,j) + t*b(2,j+1);
       end
    end
    tocka = b(:,1);
end