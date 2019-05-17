function [theta, k] = isci_theta(T2)
    % vrne theta resitev enacbe 
    % 1-cos(theta)+B/b*(theta-sin(theta))=0
    
    b = T2(1);
    B = T2(2);
    
    f = @(x) 1-cos(x)+B/b*(x-sin(x));
    theta = fzero(f,pi);
    
    k = sqrt((2*b)/(theta - sin(theta)));
end