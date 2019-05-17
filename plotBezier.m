function plotBezier(b)
% PLOTBEZIER izrise Bezierovo krivuljo in kontrolni poligon. Za izracun
% tocke na krivulji uporabimo deCasteljauov algoritem.
% Stolpci matrike b so kontrolne tocke Bezierove krivulje.
    
    t = linspace(0,1,100);
    ft = zeros(100,2);
    for i = 1:100
       ft(i,:) = deCasteljau(b,t(i)); 
    end
    plot(ft(:,1),ft(:,2));
    axis equal
end