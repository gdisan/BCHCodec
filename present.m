function out = present( n, k )
%PRESENT     заставка программы "BCH Codec" для (n,k)-кода.

clc;
disp(' @ACDISa')
disp(sprintf('\n\n\n'))
disp('                              BCH CODEC v.1.0                               ')
disp(' ');               
disp(sprintf('           для (%d,%d) двоичного примитивного БЧХ кода с d = 6',n,k))
disp(' ')
disp('                Features:')
disp('                   - Алгоритм декодирования Питерсона-Зайлера')
disp('                   - Умножение и сложение элементов поля')
disp('                     в мультипликативном представлении(таблица Zech-а)')
disp(' ')
disp('                                                               (c)2003')

out = 1;
