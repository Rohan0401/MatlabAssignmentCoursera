function digit = dail(code)
I = double(code);
digit = zeros(1,length(code))
for i = 1:length(I)
    
    j = I(1,i);
    if j >= 65 && j <= 67
        digit(i) = char(50);
    elseif j >= 68 && j <= 70
        digit(i) = char(51);
    elseif j >= 71 && j <= 73
        digit(i) = char(52);
    elseif j >= 74 && j <= 76
        digit(i) = char(53);
    elseif j >= 77 && j <= 79
        digit(i) = char(54);
    elseif j >= 80 && j <= 83 && j ~= 81
        digit(i) = char(55);
    elseif j >= 84 && j <= 86
        digit(i) = char(56);
    elseif j >= 87 && j <= 89
        digit(i) = char(57);
    elseif j == 40 || j == 41 || j == 45
        digit(i) = char(32);
    elseif j == 35 || j == 42 || j == 32
        digit(i) = code(i);
    elseif j >= 48 && j <= 57
        digit(i) =code(i) ;
    elseif j == 81 || j == 90
        digit = [];
        return;
    else
        digit = [];
        return;
    end
    
end


end