function out = mul( i, j )
%MUL    Умножение элементов поля.
%   i,j - степени сомножителей

if i ~= 31 & j ~= 31
   out = mod( i+j, 31 );
else
   out = 31;
end


