function found = large_elements(A)
[row col] = size(A);
found = [];
for ii = 1:row
    for jj = 1:col
        if A(ii,jj) > ii + jj
            found = [found; ii jj];
        else
            found = found;
        end
    end
end