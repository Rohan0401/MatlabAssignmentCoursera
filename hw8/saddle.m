function indices = saddle(M)

[m,n] = size(M);

indices = [];
for i =1:n
    for j = 1:m
        a=min(M(:,i));
        b=max(M(j,:));
        if M(j,i)==a && a==b
            indices=[indices;j i];
        end
    end
end
end











