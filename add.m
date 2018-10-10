function out = add( i, j )
%ADD    Сложение элементов поля.
%   i,j - степени слагаемых

k = j - i;

if k ~= 0
   if i == 31
      out = j;
   elseif j == 31
      out = i;
   else      
      if k < 0    
         k = 31 + k; 
      end
      out = mod((i+zech(k)),31);
   end
else
   out = 31;
end