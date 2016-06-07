function x = movies(hr1,min1,durmin1,hr2,min2,~)
if hr1 == hr2 && min1 == min2
    x = 0;
elseif hr1 <= hr2 
   time1 = hr1*60 + min1 + durmin1;
   start2 = hr2*60 + min2;
   if (start2-time1) <=30 && (start2 >= time1)
       x =1;
   else 
       x = 0;
   end
   
end

end