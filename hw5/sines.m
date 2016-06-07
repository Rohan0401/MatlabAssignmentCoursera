function [s1,s2,sums] = sines(pts,amp,n1,n2)

% This function helps to find the sum of the given expression
if nargin == 0
    pts =1000;
    amp=1;
    n1 =100;
    n2 = 1.05*n1;
elseif nargin ==1
    amp=1;
    n1 =100;
    n2 = 1.05*n1;
elseif nargin == 2
    n1 =100;
    n2 = 1.05*n1;
elseif nargin == 3
     n2 = 1.05*n1;
else
    s1 = amp.*(sin(linspace(0,2*pi*n1,pts)));
s2 = amp.*(sin(linspace(0,2*pi*n2,pts)));
sums = s1 + s2;
 plot (sums);

end
s1 = amp.*(sin(linspace(0,2*pi*n1,pts)));
s2 = amp.*(sin(linspace(0,2*pi*n2,pts)));
sums = s1 + s2;
 plot (sums);


end