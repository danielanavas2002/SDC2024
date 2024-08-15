%% Inciso A
close all; clear; clc;

G9 = tf(1,[1 1]); G7 = G9; G5 = G7; G4 = G5; G3 = G4;
G1 = tf(1, [1 2]);
G2 = tf([1 -2],[3 2 1]);
G6 = tf([1 0],[1 5]);
G8 = tf ([1 1],[1 2 1]);
W = 0;
U = 0;

% Rosa1
Geq1 = G9*G8;

% Verde 1
Geq2 = 1 + G7;

% Celeste 1
Geq3 = feedback(G2,G3,+1);

% Amarillo 2
Geq4 = Geq3*G1;

% Azul 2
Geq5 = feedback (Geq1*Geq2, 1);

% Rosa 3
Geq6 = Geq4 + G5;

% Verde 4
Geq7 = feedback(Geq6, G4);

% Celeste 5
Geq8 = feedback(Geq7, Geq5);

% Final
G_Final = Geq8 + G6;

% --------------------------------------------------
num = [3 29 142 455 1000 1527 1630 1206 629 250 60];
den = [3 41 233 769 1708 2735 3206 2699 1599 683 190];

G_Manual = tf(num, den);

load("linsys.mat")
G_Simulink = tf(linsys1);


[y_Final, t] = step(G_Final);
y_Manual = step(G_Manual);
y_Simulink = step(G_Simulink);

figure;
plot(t, y_Manual, 'g:', 'LineWidth', 1.5); 
hold on;
plot(t, y_Final, 'r--', 'LineWidth', 2); 
plot(t, y_Simulink, 'b-', 'LineWidth', 1); 
title('Respuesta al Escalón', 'FontSize', 16);
xlabel('Tiempo (s)');
ylabel('Salida');
grid on;
legend('Manual', 'Matlab', 'Simulink');

dcgain(G_Manual);
%% Inciso B
pzplot(G_Final);

pole(G_Final)

%% Inciso D
close all; 

numD = [1 6 12 1 -40 -87 -93 -52 -12];
denD = [3 26 103 254 438 545 481 294 129 38];

G_ManualD = tf(numD, denD);


load('linsys2.mat');

G_Simulink2 = tf(linsys1);

[y_Manual2, t2] = step(G_ManualD);
y_Simulink2 = step(G_Simulink2);

figure;
plot(t2, y_Manual2, 'g:', 'LineWidth', 1.5); 
hold on;
plot(t2, y_Simulink2, 'r--', 'LineWidth', 2); 
title('Respuesta al Escalón', 'FontSize', 16);
xlabel('Tiempo (s)');
ylabel('Salida');
grid on;
legend('Manual', 'Simulink');

dcgain(G_ManualD);
pole(G_ManualD)