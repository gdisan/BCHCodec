function out = field( i )
%FIELD 	Возвращает элемент поля по заданной степени 'i'
%        примитивного элемента 

   %field from p(x)=530
   myfield = [1 0 0 0 0;
              0 1 0 0 0;
              0 0 1 0 0;
              0 0 0 1 0;
              0 0 0 0 1;
              1 0 0 1 0;
              0 1 0 0 1;
              1 0 1 1 0;
              0 1 0 1 1;
              1 0 1 1 1;
              1 1 0 0 1;
              1 1 1 1 0;
              0 1 1 1 1;
              1 0 1 0 1;
              1 1 0 0 0;
              0 1 1 0 0;
              0 0 1 1 0;
              0 0 0 1 1;
              1 0 0 1 1;
              1 1 0 1 1;
              1 1 1 1 1;
              1 1 1 0 1;
              1 1 1 0 0;
              0 1 1 1 0;
              0 0 1 1 1;
              1 0 0 0 1;
              1 1 0 1 0;
              0 1 1 0 1;
              1 0 1 0 0;
              0 1 0 1 0;
              0 0 1 0 1;
              0 0 0 0 0];
           
           i = i + 1;
           out = myfield(i,:);
