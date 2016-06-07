function arabic = roman(input)
C = {'I', 'II','III','IV','V','VI','VII','VIII','IX','X','XI','XII','XIII','XIV','XV','XVI','XVII','XVIII','XIX','XX'};
if ismember(input,C)

arabic = uint8(find(strcmp([C], input)));
else
    arabic = 0;
    arabic = uint8(arabic);
end
end