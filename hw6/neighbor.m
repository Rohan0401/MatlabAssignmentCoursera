function O = neighbor(v)
if isvector(v) && length(v)>= 2
    for i = 1:(length(v)-1)
       O(i) = abs(v(i+1)-v(i));
    end
else
    O = [];
end

end