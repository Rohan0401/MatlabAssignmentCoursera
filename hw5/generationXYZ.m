function gen = generationXYZ(in)
if in < 1966 
    gen = 'O';
elseif in >= 1966 && in <=1980
    gen = 'X';
elseif in >= 1981 && in <= 1999
    gen = 'Y';
elseif in >= 2000 && in <= 2012
    gen = 'Z';
else
    gen = 'K'
end