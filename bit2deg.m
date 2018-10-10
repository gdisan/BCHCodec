function out = bit2deg( A )
% BIT2DEG    ѕеревод массива коэфф-тов полинома 
%            в показательную форму записи этого полинома
%        A - массив коэфф-тов полинома

out = [];
lenA = length(A);
k = find(A);
if ~isempty(k)
   for i = k
       out = [out lenA-i];
   end
end
	 