function [M,S] = mtable(n,m)
M = (1:n)'*(1:m);
S = sum(sum(M));
end