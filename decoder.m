function [ax,mx,flag] = decoder( yx )
%DECODER    Декодирует кодовое слово.
%           Исправляет 1,2-кратные ошибки;обнаруживает 3-кратные.
%       yx - слово на выходе канала

ax = -1;
mx = -1;

S = sindrom( yx );
Nu = numerr( S );

if Nu < 3
  if Nu ~= 0 % Ищем локаторы ошибок
     L = polloc( S, Nu );
     X = placerr( L );
     if min(X) == -1
        flag = -1;
     else
        flag = length(X);
        X = deg2bit( X, 31 );
        ax = mod( yx+X, 2 );
        mx = ax;
        mx(21:31) = [];
     end
  else
    flag = 0;
    ax = yx;
    mx = ax;
    mx(21:31) = [];
  end  
else
   flag = 3;
end  
