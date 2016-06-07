function H = hulk(v)
Vt =v';
H = [Vt(1:end,1) (Vt(1:end,1)).^2 (Vt(1:end,1)).^3  ];
end