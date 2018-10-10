% "BCH Codec" by ACDISa (c)2003.
first_screen = present(31,20);
pause;
while 1
   upr=menu('Your choice','Data','Decoder','Exit');
   if upr==1
      clc;disp(' ')
      mx = input(' Введите слово для передачи(в степенях)\n => ');
      mx = deg2bit( mx, 20 );
      if mx ~= -1
         ax = coder( mx , 11 );
         ax_disp = bit2deg( ax );
         if ~isempty(ax_disp)
            disp(sprintf('\n Кодовое слово(в степенях)'))
            disp(ax_disp)
         else
            disp(sprintf('\n Нулевое кодовое слово\n    []\n'))
         end
         ex = input(' Введите позиции ошибок(в степенях)\n => ');
         ex = deg2bit( ex, 31 );
         if ex ~= -1
            yx = mod( ax+ex, 2 );
            yx_disp = bit2deg(yx);
            if ~isempty(yx_disp)
               disp(sprintf('\n Слово на выходе канала(в степенях)'))
               disp(yx_disp)
            else
               disp(sprintf('\n Нулевое слово на выходе канала\n    []\n'))
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
                  disp(sprintf(' Произошло 2 ошибки'))
               elseif f == 1
                  disp(sprintf(' Произошло 1 ошибкa'))
               end
            else
               disp(sprintf(' Ошибок не было'))
            end
            ax = bit2deg(ax);
            if ~isempty(ax)
               disp(sprintf('\n Слово на выходе декодера(в степенях)'))
               disp(ax)
            else
               disp(sprintf('\n Нулевое слово на выходе декодера\n    []\n'))
            end
            mx = bit2deg(mx);
            if ~isempty(mx)
               disp(sprintf(' Передаваемое слово(в степенях)'))
               disp(mx)
            else
               disp(sprintf(' Передаваемое слово нулевое\n    []\n'))
            end
         else
            disp(sprintf('Произошло 3 ошибки.Не могу исправить'))
            yx = bit2deg(yx);
            if ~isempty(yx)
               disp(sprintf('\n Слово на выходе декодера(в степенях)'))
               disp(yx)
            else
               disp(sprintf('\n Нулевое слово на выходе декодера\n    []\n'))
            end
      end
      else
         disp(sprintf('Произошло более 3-х ошибок.Не могу декодировать'))
      end
   elseif upr==3
      clc;disp(' ');
      disp('" Thank you for using "BCH Codec" "' );
      disp('                                 @ACDISa');disp(' ')
      break
   end
end
