function out = bit2deg( A )
% BIT2DEG    ������� ������� �����-��� �������� 
%            � ������������� ����� ������ ����� ��������
%        A - ������ �����-��� ��������

out = [];
lenA = length(A);
k = find(A);
if ~isempty(k)
   for i = k
       out = [out lenA-i];
   end
end
	 