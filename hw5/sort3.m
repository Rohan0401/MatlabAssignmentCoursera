function [T] = sort3(a,b,c)
if a <= b && a <= c
    T(1,1) = a;
    if b <=c
        T(1,2)=b; T(1,3) = c;
    else
        T(1,3) = b; T(1,2) = c;
    end
elseif  b <= a && b <= c
    T(1,1) = b;
    if a <=c
        T(1,2)=a; T(1,3) = c;
    else
        T(1,3) = a; T(1,2) = c;
    end
else
    T(1,1) = c;
    if b <=a
        T(1,2)=b; T(1,3) = a;
    else
        T(1,3) = b; T(1,2) = a;
    end
end
