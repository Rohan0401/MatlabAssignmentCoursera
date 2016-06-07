function res=queen_check(board)
res=true;
for i=1:8
    for j=1:8
        if board(i,j)==1
            if sum(board(i,:))~=1
                res=false;
                return;
            end
            if sum(board(:,j))~=1
                res=false;
                return;
            end
            
            tempi=i;
            tempj=j;
            while i<=7 & j<=7
                i=i+1;
                j=j+1;
                if board(i,j)==1
                    res=false;
                    return;
                end
            end
            i=tempi;
            j=tempj;
            while i>=2 & j<=7
                i=i-1;
                j=j+1;
                if board(i,j)==1
                    res=false;
                    return;
                end
            end
            i=tempi;
            j=tempj;
            while i>=2 & j>=7
                i=i-1;
                j=j-1;
                if board(i,j)==1
                    res=false;
                    return;
                end
            end
            i=tempi;
            j=tempj;
            while i<=7 & j>=2
                i=i+1;
                j=j-1;
                if board(i,j)==1
                    res=false;
                    return;
                end
            end       

        end
    end
end
end
