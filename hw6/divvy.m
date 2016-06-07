function B = divvy(A,k)
A(rem(A,k)~=0) = k.*(A(rem(A,k)~=0));
B = A;
end