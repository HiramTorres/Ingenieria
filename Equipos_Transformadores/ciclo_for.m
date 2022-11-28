close all;
clear all;

funcion_seno = [0];
figure
hold on %Este comando permite superponer nuevos valores en la grafica manteniendo los anteriores

for i = 0:100 %El ciclo se ejecuta 60 veces

  nuevo_valor = sin(2*pi*i/10) % Se calcula el nuevo valor
  funcion_seno = horzcat(funcion_seno,nuevo_valor); %horzcat funciona para concatenar
  plot(funcion_seno) % imprime la grafica
pause (0.2)


  end
  hold off

