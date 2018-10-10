function out = placerr( L )
%PLACERR    Находит корни полинома локаторов и
%           позиции ошибок.
%       L - коэфф-ты полинома локаторов

Nu = length( L );

if Nu == 2
   X = [-1 -1];
   k = 1;
   for i = 0:30
      currentX = add(0,add(mul(L(1),i),mul(L(2),(i)*2)));
      if currentX == 31
         X(k) = 31 - i;
         k = 2;
      end
   end
else
   X = -1;
   for i = 0:30
      currentX = add(0,mul(L,i));
      if currentX == 31
         X = 31 - i;
      end
   end

end
out = X;
         

