function score=bowl(games)
len=length(games);
if len<11 | len>21
    score=-1;
    return;
end
for i=1:len
    if games(i)<0 | games(i)>10
        score=-1;
        return;
    end
end

score=0;
strikes=zeros(1,9);
spares=zeros(1,9);
opens=zeros(1,9);
current=1;
count=1;
while current<len & count<=9
    if games(current)==10
        strikes(count)=1;
        count=count+1;
        current=current+1;
    elseif games(current)+games(current+1)==10
        spares(count)=1;
        count=count+1;
        current=current+2;
    elseif games(current)+games(current+1)<10
        opens(count)=1;
        count=count+1;
        current=current+2;
    else
        score=-1;
        return;
    end
end
score10_begin=current;
current=1;
for i=1:9
    if strikes(i)==1
        score=score+games(current)+games(current+1)+games(current+2);
        current=current+1;
    elseif spares(i)==1
        score=score+games(current)+games(current+1)+games(current+2);
        current=current+2;
    elseif opens(i)==1
        score=score+games(current)+games(current+1);
        current=current+2;
    end
end

if current+1~=len & current+2~=len
    score=-1;
    return;
end

if games(current)==10
    if current+2~=len
        score=-1;
        return;
    else
        score=score+games(current)+games(current+1)+games(current+2);  
    end
elseif games(current)+games(current+1)==10
    if current+2~=len
        score=-1;
        return;
    else
        score=score+games(current)+games(current+1)+games(current+2);
    end
elseif games(current)+games(current+1)<10
    if current+1~=len
        score=-1;
        return;
    else
        score=score+games(current)+games(current+1);
    end
else
    score=-1;
    return;
end


end

        