function A = bell(n)
A(1,1) = 1;
if n<=0 || rem(n,1)~=0
    A =[];
else

for i = 2:n
     A(i,1) = A(1,end);
     for j = 1:i-1
         A(i-j,j+1) = A(i-j+1,j)+A(i-j,j);
     end
end
end
end