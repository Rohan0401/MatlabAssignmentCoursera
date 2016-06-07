function c = pitty(ab)
A = ab(1:end,1);
B = ab(1:end,2);

C1 = A.^2 + B.^2;

c =sqrt(C1);

end
