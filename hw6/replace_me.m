function w = replace_me(v,a,b,c)
if nargin == 4
    i = v(v==a);
    if ~(isempty(i))
        % remember the indices where a occurs
        ind = (v == a);
        % split array such that each element of a cell array contains one element
        v = mat2cell(v, 1, ones(1, numel(v)));
        % replace appropriate cells with two-element array
        v(ind) = {[b c]};
        % concatenate
        w = cell2mat(v);
    else
        w = v;
        
    end
    
elseif nargin == 3
     i = v(v==a);
    if ~(isempty(i))
        % remember the indices where a occurs
        ind = (v == a);
        % split array such that each element of a cell array contains one element
        v = mat2cell(v, 1, ones(1, numel(v)));
        % replace appropriate cells with two-element array
        v(ind) = {[b b]};
        % concatenate
        w = cell2mat(v);
    else
        w = v;
        
    end
else
     i = v(v==a);
    if ~(isempty(i))
        % remember the indices where a occurs
        ind = (v == a);
        % split array such that each element of a cell array contains one element
        v = mat2cell(v, 1, ones(1, numel(v)));
        % replace appropriate cells with two-element array
        v(ind) = {[0 0]};
        % concatenate
        w = cell2mat(v);
    else
        w = v;
        
    end
    
end