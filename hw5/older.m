function o = older(y1,m1,d1,y2,m2,d2)
if (y1 == y2 && m1 == m2 && d1 == d2)
    o =0;
elseif y1<y2
    o = 1;
elseif y1 == y2 && m1 < m2
     o = 1;
elseif y1 == y2 && m1 == m2 && d1<d2
    o = 1;
elseif y2<y1
    o = -1;
elseif y1 == y2 && m2 < m1
     o = -1;
elseif y1 == y2 && m2 == m1 && d2<d1
    o = -1;
end