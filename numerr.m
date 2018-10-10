function out = numerr( S )
%NUMER   Вычисляет число ошибок.
%     S - компоненты синдрома

%Считаем определитель 3-го порядка
tmp(1) = mul(S(1),mul(S(3),S(5)));
tmp(2) = mul(S(3),mul(S(3),S(3)));
tmp(3) = mul(S(2),mul(S(2),S(5)));
tmp(4) = mul(S(4),mul(S(4),S(1)));
detM3 = tmp(1);
for i = 2:4
   detM3 = add(detM3,tmp(i));
end

if detM3 == 31 % 00000
   
   %Считаем определитель 2-го порядка
   tmp1 = mul(S(1),S(3));
   tmp2 = mul(S(2),S(2));
   detM2 = add(tmp1,tmp2);
   
   if detM2 == 31 % 00000
      if S(1) == 31 % detM1 == 0
         out = 0;
      else
         out = 1;
      end
   else
      out = 2;
   end
else
   out = 3;
end

         






