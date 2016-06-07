function o = myprime(k)
A = (1:k);
while (k>1)
    
    I = A(1,2);
    if k == 2
        o =true;
        break
    else
        A = A(rem(A,I)~=0);
        [m,n] = size(A);
        
        if n==1
            o = false;
            break
        elseif A(1,2) == k && n~=1
            o = true;
            break
        else
            continue
        end
    end
    
end