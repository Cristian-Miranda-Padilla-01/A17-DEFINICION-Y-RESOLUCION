% Octave Script
%School                :Tecnologico de Estudios Superiores de Jilotepec 
% Materia : Cálculo Diferencial
%Specialty             :Ingeniería en Sistemas Computacionales 
%Grupo :3101
% Title                :Resolución de desigualdades
% Description          :Script para resolver un problema sobre la cantidad minima de material para hacer una lata cilindrica usada para envasar aceite
% Author               :Cristan Miranda Padilla ,  Ambar Itzel Cruz Zarza, Bryan Abner Garcia Cruz 
% Date                 :202123107    , 202123174    ,  202123180
% Version              :1
% Usage                :octave>cd/path/
%		                   :octave>ResolucionDesigualdades 
% Notes                :Requiere aplicacion octave, usar la linea de comandos
%                      :https://octaveintro.readthedocs.io/en/latest/index.html
%limpiar variables
clear all
%Uso mínimo de material para una lata cilindrica de aceite
disp ('Material minimo para hacer una  lata cilindrica para envasar aceite.');
disp ('');
%Rango de 0...1 en i = 0.1
r=0:0.1:1;

%valor de la funcion
disp ('valor de la funcion');
ar =@(r) (2*(pi)) * (r.^2) + (2./(r))

%funcion a graficar
y = (2 * (pi))*(r.^2)+(2./(r))
resr  =fminbnd(ar,0,1);
%dibujar r, y
plot(r,y);

grid on;

%Titulo
title(['Material minimo r = ' num2str(resr)]);
%Etiqueta para x
xlabel(['Min r = ' num2str(r)]);
%Etiqueta para y
ylabel(['Min y = ' num2str(ar(resr))] );
