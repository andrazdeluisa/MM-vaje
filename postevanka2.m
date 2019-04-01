function A = postevanka2()
    % input: a in b
    % vrne matriko postevanke velikosti a x b
    
    a = input('Vnesite stevilo a: ');
    b = input('Vnesite stevilo b: ');
    
    x = 1:a;
    y = 1:b;
    A = x'*y;

end

