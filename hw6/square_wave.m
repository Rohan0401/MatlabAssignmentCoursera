function F = square_wave(n)
close all;
F = zeros(1,1001);

for k = 1:n
    p=0;
    for i= 0:((4*pi)/1000):(4*pi)
        p = p+1;
       F(1,p) =F(1,p) + (   sin((2*k-1).*(i))./(2*k-1));
    end
end
plot(F)

end
