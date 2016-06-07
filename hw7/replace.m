function C = replace(C,c1,c2)
for i = 1:length(C)
    for j = 1:length(C{i})
        if strcmp((C{i}(1,j)),c1)
            C{i}(1,j) = c2;
        else
            C{i}(1,j) = C{i}(1,j);
        end
    end
        
end