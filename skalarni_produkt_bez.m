function y = skalarni_produkt_bez(b,t,A)
%vrne skalarni produkt med tangento na b v tocki b(t) in
%smernim vektorjem od tocke b(t) do tocke a
    B = deCasteljau(b,t);
    v = A-B;
    DB = bezier_der(b,t);
    y = v'*DB;
end

