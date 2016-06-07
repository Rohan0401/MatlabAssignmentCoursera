function p =prime_pairs(n)
A   = primes(1e5);

A = A(isprime(A+n));

if isempty(A)
    p = -1;
else
    p = A(1);
end
end
