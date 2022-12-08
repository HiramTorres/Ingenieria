
%Este es un ejemplo apara graficar funciones de membresia
%de logica difusa
close all;
clear all;
% para utilizar las funciones de logica difusa
% utilizar el comando pkg load
pkg load fuzzy-logic-toolkit;

%declarar un objeto de sistema inferencia difusa

a=newfis('Clima');
% se agrega una variable, se debe indicar valor minimo 
%y maximo

a=addvar(a,'input','temperatura',[0,50]);

%definir las etiquetas linguisticas, funciones de 
%membresia y sus rangos
a=addmf(a,'input',1,'muy frio','trapmf',[-1,0,5,10]);
a=addmf(a,'input',1,'frio','trimf',[8,12,18]);
a=addmf(a,'input',1,'templado','trimf',[15,25,30]);
a=addmf(a,'input',1,'caluroso','trapmf',[28,35,50,51]);

plotmf(a,'input',1);

a=addvar(a,'input','humedad',[0,100]);
a=addmf(a,'input',2,'seco','trapmf',[-1,0,10,25]);
a=addmf(a,'input',2,'normal','trimf',[23,45,60]);
a=addmf(a,'input',2,' muy humedo','trapmf',[55,65,100,101]);
plotmf(a,'input',2);

%Con las variables anteriores vamos a controlar la velocidad
%de un ventilador desde 0 hasta 200 rpm
a=addvar(a,'output','velocidad_ventilador',[0,200]);
a=addmf(a,'output',1,'baja','trapmf',[-1,0,20,50]);
a=addmf(a,'output',1,'media','trimf',[46,90,120]);
a=addmf(a,'output',1,' rapido','trapmf',[110,130,200,201]);
plotmf(a,'output',1);

a=addrule(a,[1,1,1,1,1; 2,1,1,1,1;3,1,2,1,1;4,1,3,1,1;...
             1,2,1,1,1; 2,2,1,1,1; 3,2,2,1,1; 4,2,3,1,1;...
             1,3,1,1,1; 3,2,1,1,1; 3,3,3,1,1; 4,3,3,1,1]);
             
showrule(a);
   

temperatura_prueba=20;
humedad_prueba=25;

velocidad_ventilador=evalfis([temperatura_prueba,humedad_prueba],a)   
             