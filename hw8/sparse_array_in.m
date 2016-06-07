function B =sparse_array_in(data_file)
% The first argument is a  binary file name which was created using
% sparse_array_out function.
%The Second argument is the the Matrix return which was being writtern in
%first function.

fid = fopen(data_file,'r');
if fid < 0
    B = [];
    return;
end
% Filename need to be opened
row = fread(fid,1,'uint32'); % read no of row(1)
col = fread(fid,1,'uint32');% read no.of colomn(2)
non_zero = fread(fid,1,'uint32');% read length of non-zero vector(3)
% Create a zero matrix
B = zeros(row,col);
%Fill with non zero matrix
for jj = 1:non_zero
    r = fread(fid,1,'uint32');%Read the row(4)
    c = fread(fid,1,'uint32');%Read the colomn(5)
    v = fread(fid,1,'double');%Read the Value(6)
    B(r,c) = v;% Assign the Value in Matrix
end
fclose(fid);%Close the file


    
end