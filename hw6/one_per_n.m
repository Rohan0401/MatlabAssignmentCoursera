function n = one_per_n(x)
n = 0;
S = 0;
while (x>S)
    n = n+1
    S =S + (1/n)
    
    if (n <= 10000)
        continue;
    else
        n= -1;
        return;
    end
    
end
