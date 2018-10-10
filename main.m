% "BCH Codec" by ACDISa (c)2003.
first_screen = present(31,20);
pause;
while 1
   upr=menu('Your choice','Data','Decoder','Exit');
   if upr==1
      clc;disp(' ')
      mx = input(' ������� ����� ��� ��������(� ��������)\n => ');
      mx = deg2bit( mx, 20 );
      if mx ~= -1
         ax = coder( mx , 11 );
         ax_disp = bit2deg( ax );
         if ~isempty(ax_disp)
            disp(sprintf('\n ������� �����(� ��������)'))
            disp(ax_disp)
         else
            disp(sprintf('\n ������� ������� �����\n    []\n'))
         end
         ex = input(' ������� ������� ������(� ��������)\n => ');
         ex = deg2bit( ex, 31 );
         if ex ~= -1
            yx = mod( ax+ex, 2 );
            yx_disp = bit2deg(yx);
            if ~isempty(yx_disp)
               disp(sprintf('\n ����� �� ������ ������(� ��������)'))
               disp(yx_disp)
            else
               disp(sprintf('\n ������� ����� �� ������ ������\n    []\n'))
            end
         else
            disp('>>Attention: Incorrect place(s)')
         end
      else
         disp('>>Attention: Incorrect word')
      end
   elseif upr==2 
      [ax,mx,f] = decoder( yx );
      if f ~= -1
         if f ~= 3
            if f ~= 0
               if f == 2
                  disp(sprintf(' ��������� 2 ������'))
               elseif f == 1
                  disp(sprintf(' ��������� 1 �����a'))
               end
            else
               disp(sprintf(' ������ �� ����'))
            end
            ax = bit2deg(ax);
            if ~isempty(ax)
               disp(sprintf('\n ����� �� ������ ��������(� ��������)'))
               disp(ax)
            else
               disp(sprintf('\n ������� ����� �� ������ ��������\n    []\n'))
            end
            mx = bit2deg(mx);
            if ~isempty(mx)
               disp(sprintf(' ������������ �����(� ��������)'))
               disp(mx)
            else
               disp(sprintf(' ������������ ����� �������\n    []\n'))
            end
         else
            disp(sprintf('��������� 3 ������.�� ���� ���������'))
            yx = bit2deg(yx);
            if ~isempty(yx)
               disp(sprintf('\n ����� �� ������ ��������(� ��������)'))
               disp(yx)
            else
               disp(sprintf('\n ������� ����� �� ������ ��������\n    []\n'))
            end
      end
      else
         disp(sprintf('��������� ����� 3-� ������.�� ���� ������������'))
      end
   elseif upr==3
      clc;disp(' ');
      disp('" Thank you for using "BCH Codec" "' );
      disp('                                 @ACDISa');disp(' ')
      break
   end
end
