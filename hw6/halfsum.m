function s = halfsum(A)
[m,n] = size(A);
s =0;
if s==0
    for i = 1:m
       
        s = s+sum(A(i,i:end));
    end
end