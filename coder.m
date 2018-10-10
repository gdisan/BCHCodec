function ax = coder( mx, r )
%CODER    C�������������� �����. 
%         ��������� ������� �����,��������� ������������
%         �������� ������ ��� ���������� ��������
%     mx - ������� ������������������ ������
%     r - ����� ���������� ��������

bx = [1 0 1 1 1 0 1 1 0 0 1]; %������� ������ �������
S = zeros(1,r); %��������� �������

%������� ��������� �������(r,r)
C = eye(r-1,r-1);
C = [C zeros(r-1,1)];
C = [bx;C];

for i = 1:length(mx)
    S = mod( mod( S*C, 2 ) + mx(i)*bx, 2 );
end

ax = [ mx S ];
