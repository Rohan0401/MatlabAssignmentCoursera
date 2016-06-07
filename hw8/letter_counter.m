function count = letter_counter(data_file)
%The first argument is the input text file taken by MatLab;
%The second argement return the number of letter contain in the file;

fid = fopen(data_file,'rt');
if fid < 0
    count = -1;
    return;
end
s = 0;
online = fgets(fid);

 while ischar(online)
      l = isletter(online);
      s = s + sum(l);
      online = fgets(fid);
      
 end

 count = s;
fclose(fid);



end