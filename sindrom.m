function out = sindrom( yx )
%SINDROM   Вычисляет d-1(5) компонент синдрома

yx = bit2deg(yx);

if ~isempty(yx)
   for i = 1:5
      dega = 31;
      for j = 1:length(yx)
         dega = add(dega,mod(yx(j)*(i-1),31));
      end
      sindr(i) = dega;
   end
else
   sindr = ones(1,5)*31;
end

out = sindr;
