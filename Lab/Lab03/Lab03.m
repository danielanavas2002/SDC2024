%% Laboratorio 3
%% PRIMERA PARTE
% % Guardar los vectores en un archivo .mat
% save('Señal1.mat', 'input1', 'output1', 'time1', 'dt1');
% 
% % Guardar los vectores en un archivo .mat
% save('Señal2.mat', 'input2', 'output2', 'time2', 'dt2');
% 
% % Periodo de Muestreo
% dt1 = time1(2) - time1(1);
% dt2 = time2(2) - time2(1);


%% SEGUNDA PARTE
close all

% Cargar señales
load Señal1.mat
load Señal2.mat

% Figuras 
% Circuito RLC
figure;
plot(time1, input1, 'r', 'DisplayName', 'Input'); % Gráfica del input en rojo
hold on;
plot(time1, output1, 'b', 'DisplayName', 'Output'); % Gráfica del output en azul
hold off;
xlabel('Tiempo (s)');
ylabel('Amplitud (V)');
title('Entrada & Salida Vs Tiempo | Circuito RLC');
legend show;
grid on;
xlim([-0.1 0.5]);

% Circuito OPAMP
figure;
plot(time2, input2, 'r', 'DisplayName', 'Input'); % Gráfica del input en rojo
hold on;
plot(time2, output2, 'b', 'DisplayName', 'Output'); % Gráfica del output en azul
hold off;
xlabel('Tiempo (s)');
ylabel('Amplitud (V)');
title('Entrada & Salida Vs Tiempo | Circuito OPAMP');
legend show;
grid on;
xlim([-0.015 0.14]);

%% Segunda Parte - System Identification
% save('tf.mat', 'tf1', 'tf2');
load tf.mat

num2_1 = tf1.Numerator;
den2_1 = tf1.Denominator;

num2_2 = tf2.Numerator;
den2_2 = tf2.Denominator;

%% TERCERA PARTE
% RLC
num1 = 2128000; 
den1 = [1 100000 2128000];

% OPAMP
% num1 = 125000;
% den1 = [1 100 125000];