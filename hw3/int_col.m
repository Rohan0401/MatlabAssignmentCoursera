function o = int_col (i)
if (rem(i,2)== 0 )
    o = (i:-1:1)';
else
  o = ([(i+1)/2:1:i (i-1)/2:-1:1])';
end