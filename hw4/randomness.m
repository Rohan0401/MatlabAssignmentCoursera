function R = randomness(lm,n,m)
R = floor(1 + rand(n,m).*(lm));
hist(R,100)
end
