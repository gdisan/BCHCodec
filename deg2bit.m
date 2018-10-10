function out = deg2bit( A, len )
%DEG2BIT   Перевод полинома из показательной формы записи 
%          в массив коэфф-тов
%       A - полином в виде показателей степеней,
%           соотв. ненулевым коэфф-там
%       len - число коэфф-тов( MaxDeg(A)+1 )

out = zeros(1,len);
if ~isempty(A)
   if max(A) < len & min(A) >= 0
      for i = 1:length(A)
          out(len-A(i)) = 1;
      end
   else
      out = -1;
   end
end

   
   
