function b = horner(a,x)
    % po Hornerju izracuna vrednost polinom s koef. v a v tocki x
    n = length(a)-1;
    b = a(1);
    for i = 2:n+1
        b = x * b + a(i);
    end
end

