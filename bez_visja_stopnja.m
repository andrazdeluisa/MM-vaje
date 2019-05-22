function c = bez_visja_stopnja(b)
% kontrolne tocke bezierove krivulje
% vrne kontrolne tocke iste krivulje, eno stopnjo visje
    n = length(b);
    
    c = zeros(2,n+1);
    c(:,1)=b(:,1);
    c(:,end)=b(:,end);
    for j = 2:n
        c(:,j)=(j-1)/n*b(:,j-1)+(1-(j-1)/n)*b(:,j);
    end
end

