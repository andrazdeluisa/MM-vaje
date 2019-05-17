function risi_brah(T1, T2)
    % narise brahistohrono med tockama T1 in T2
    
    [theta1, k] = isci_theta(T2);
    theta = linspace(0, theta1);
    
    x = 1/2 * k^2 * (theta-sin(theta)) + T1(1);
    y = -1/2 * k^2 * (1-cos(theta)) + T1(2);
    
    hold on
    plot(x,y,'b','Linewidth',2);
    
    grid on
    axis equal
end