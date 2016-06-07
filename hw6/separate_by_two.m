function [E O] = separate_by_two(A)
E = (A(rem(A,2)==0))'
O = (A(rem(A,2)~=0))'
end