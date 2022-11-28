close all; % Cierra las figuras abiertas
clear all; % Limpia toda la pantalla del workspace

time = 0:0.1:6;
time2 = 0:0.1:6;

funcion = sin(2*pi*tiempo);
funcion2 = cos(2*pi*tiempo2);

subplot(2,1,1)
plot(tiempo,funcion);
title("Funciones sen");

subplot(2,1,2);
plot(tiempo2,funcion2);
title("Funcion cos");
