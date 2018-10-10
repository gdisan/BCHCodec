function out = polloc( S, Nu )
%POLLOC   Hаходит коэфф-ты полинома локаторов.
%      S - компоненты синдрома
%      Nu - число ошибок

if Nu == 2
   maindet = add(mul(S(1),S(3)),mul(S(2),S(2)));%главный определитель
   det1 = add(mul(S(3),S(3)),mul(S(4),S(2)));
   det2 = add(mul(S(1),S(4)),mul(S(3),S(2)));
   
   L(1) = det2 - maindet;
   if L(1) < 0
      L(1) = 31 + L(1);
   end
   L(2) = det1 - maindet;
   if L(2) < 0
      L(2) = 31 + L(2);
   end
else
   L = S(2) - S(1);
   if L < 0
      L = 31 + L;
   end
end

out = L;
   

      