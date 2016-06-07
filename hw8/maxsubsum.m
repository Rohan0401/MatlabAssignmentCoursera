function [row,col,numrows,numcols,summa]=maxsubsum(A)
[Arow,Acol]=size(A);
row=1;
col=1;
numrows=Arow;
numcols=Acol;
summa=sum(A(:));
for i=1:Arow
    for j=1:Acol
        for k=0:Arow-i
            for l=0:Acol-j
                submatrix=A(i:i+k,j:j+l);
                if sum(submatrix(:))>summa
                    summa=sum(submatrix(:));
                    row=i;
                    col=j;
                    numrows=k+1;
                    numcols=l+1;
                end
            end
        end
    end
end
end
