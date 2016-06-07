function dec = roman2(S)
dec = uint16(0);
lstnum = uint16(0);
if length(S) > 10
    dec = uint16(0);
    return;
end
checkInd = zeros(1,length(S));
port = ['I','V','X','L','C'];

for i=1:length(S)
    for j=1:5   
        if S(i)==port(j)
            checkInd(i)=j;
        end
    end
end
for i=1:length(S)-2
    if S(i)==S(i+2) && checkInd(i)<checkInd(i+1)
        dec=uint16(0);
        return;
    end
end   

for m = 1:length(S)-3
if S(m) == S(m+1) && S(m+1) == S(m+2) && S(m+2) == S(m+3)
        dec = uint16(0);
        return;
end
end

for i = length(S):-1:1
    m = length(S) - i +1;
    if digitValue(S(m)) < 0
        return;
    elseif length(S)-m >1
        if digitValue(S(m)) < digitValue(S(m+2))
            dec = uint16(0);
            return;
        end
    end
    
    switch (S(i))
        
        case {'C'}
            dec = processor(100,lstnum,dec);
            lstnum = 100;
            
        case {'L'}
            dec = processor(50,lstnum,dec);
            lstnum = 50;
            
        case {'X'}
            dec = processor(10,lstnum,dec);
            lstnum = 10;
            
        case {'V'}
            dec = processor(5,lstnum,dec);
            lstnum = 5;
            
        case {'I'}
            dec = processor(1,lstnum,dec);
            lstnum = 1;
        otherwise
            dec = uint16(0);
            return;
            
    end
    if dec > 399
        dec = uint16(0);
        return;
    else
        dec = uint16(dec);
    end
    
    
end

    function V = processor(a,lstnum,lstdec)
        if lstnum > a
            V = lstdec -a;
        else
            V = lstdec + a
        end
    end
        
        function value = digitValue(T)
            switch(T)
                case 'I'
                    value = 1;
                case 'V'
                    value = 5;
                case 'X'
                    value = 10;
                case 'L'
                    value = 50;
                    
                case 'C'
                    value = 100;
                otherwise
                    value = 0;
            end
        end
        
        
        
        
        
        
        
    end

