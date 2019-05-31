function aproksimacija_kroznice(phi, d)
    % aproksimacija kroznice s polinomskim interpolantom
    % stopnje 3 
    % phi kot kroznega loka
    % d
    
    p0 = [cos(phi);-sin(phi)];
    p3 = [cos(phi);sin(phi)];
    t0 = d*[sin(phi);cos(phi)];
    t3 = d*[-sin(phi);cos(phi)];
    
    p1 = p0+t0;
    p2 = p3-t3;
    b = [p0 p1 p2 p3];
    plotBezier(b);
    hold on
    
    t = linspace(0,2*pi);
    X = cos(t);
    Y = sin(t);
    plot(X,Y);
    
    hold on
    
   % rotiramo kontrolne tocke za kot phi
    b_rot = b;
    Q = [cos(2*phi) -sin(2*phi); sin(2*phi) cos(2*phi)];
    
    for i = 1:(pi/phi)-1
        for j = 1:size(b,2)
            b_rot(:,j) = Q*b_rot(:,j);
        end
        plotBezier(b_rot);
        hold on
    end
end