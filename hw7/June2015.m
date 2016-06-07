function m = June2015
 m = cell(30,3);
for i = 1:30
    if rem(i,7) == 1
        d = 'Mon';
    elseif rem(i,7) == 2
        d = 'Tue';
    elseif rem(i,7) == 3
        d = 'Wed';
    elseif rem(i,7) == 4
        d = 'Thu';
    elseif rem(i,7) == 5
        d = 'Fri';
    elseif rem(i,7) == 6
        d = 'Sat';
    else
        d = 'Sun';
    end
    
   
    
    m{i,1} = 'June';
    m{i,2} = i;
    m{i,3} = d;
    
    

end
end