function value = integerize (A)
elemnt = max(A(:))

if elemnt >= 0 && elemnt < 2^8
    value = 'uint8';
elseif elemnt >= 2^8 && elemnt < 2^16
    value = 'uint16';
elseif elemnt >=2^16 && elemnt < 2^32
    value = 'uint32';
elseif elemnt >=2^32 && elemnt < 2^64
    value = 'uint64';
else 
    value = 'NONE'
end

  
    
    
end
