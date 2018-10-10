function out = deg2bit( A, len )
%DEG2BIT   ������� �������� �� ������������� ����� ������ 
%          � ������ �����-���
%       A - ������� � ���� ����������� ��������,
%           �����. ��������� �����-���
%       len - ����� �����-���( MaxDeg(A)+1 )

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

   
   
