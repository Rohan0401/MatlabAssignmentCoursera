function [Tm ,Dk] = light_time(M)
Dk = (1.609).*M;
Sm = 300000*60;
Tm = (1/Sm).*Dk;
end