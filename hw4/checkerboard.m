function C = checkerboard (n ,m)
C = zeros(n,m);
V = ones(n,m);
C(1:2:n,1:2:m) = V(1:2:n,1:2:m); 
C(2:2:n,2:2:m) = V(2:2:n,2:2:m);

end