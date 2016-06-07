function v = classify(w,v)
 if (nargin == 1)
     
    [m,n]= size(w);
    if m == 0 && n == 0
        v = -1;
    elseif m == 0 || n == 0
        v = -1;
%      elseif m == 0 || n == 1
%         v = -1;
     elseif m==1 && n == 1
        v = 0;
    elseif ((m == 1 && n > 1) || (m > 1 && n ==1))
            v = 1;
    else
            v = 2;
    end
 elseif nargin ==2
     x = [w v];
     [m,n]= size(x);
      if m == 0 && n == 0
        v = -1;
      elseif m==1 && n == 1
        v = 0;
      elseif m==2 || n == 2
            v = 1;
      else
            v = 2;
       end
     
 end
end