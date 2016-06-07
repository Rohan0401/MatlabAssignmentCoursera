function [S k1] = approximate_pi (delta)

k = 0;
S = 0;

    while(delta < abs(S-pi))
    S = S + (sqrt(12))./( (2*k+1).*(-3).^k);
    k = k+1;

    
    end
   k1 = k-1; 
end