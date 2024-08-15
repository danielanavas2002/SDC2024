%% Parte 3
close all; clear; clc;

load("Parte3D.mat")

num = [1 0];
den = [1 2];
den1 = [1 2.199];

G1 = tf(num, den);
G2 = tf(num, den1);

[y1, t1] = step(G1);
[y2, t2] = step(G2);

u = ones(size(t1));

figure;
plot(t1, y1, 'b--', 'LineWidth', 2); 
hold on;
plot(t2, y2, 'r', 'LineWidth', 2); 
plot(t2, u, 'k:', 'LineWidth', 1.5); 
xlabel('Tiempo (s)');
ylabel('Magnitud (m)');
title('Respuesta a un Escalón', 'FontSize', 16);
legend('G Manual', 'G con Simulink', 'Entrada');
grid on;