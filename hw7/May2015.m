function m = May2015 
for i = 1:31
    if rem(i,7) == 1
        d = 'Fri';
    elseif rem(i,7) == 2
        d = 'Sat';
    elseif rem(i,7) == 3
        d = 'Sun';
    elseif rem(i,7) == 4
        d = 'Mon';
    elseif rem(i,7) == 5
        d = 'Tue';
    elseif rem(i,7) == 6
        d = 'Wed';
    else
        d = 'Thu';
    end
        
    m(i).month = 'May';
    m(i).date = i;
    m(i).day = d;
    
    
    
end