function str = codeit(txt)
I = double(txt);

for i = 1:length(I)
    
    j = I(1,i);
    if j >= 65 && j <= 90
       d = 90-j;
       str(i) = char(65+d)
    elseif j>=97 && j<=122 
        d = 122 -j;
        str(i) = char(97+d);
    else
        str(i) = txt(i);
    end
end

end
