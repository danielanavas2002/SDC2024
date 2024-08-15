%% Parte 3
close all; clear; clc;

num = [1];
den = [1 2];

num1 = [1];
den1 = [1 2.1999999999999];

G1 = tf(num, den);
G2 = tf(num1, den1);
G3 = tf(num1, den1);

[y1, t1] = step(G1);
[y2, t2] = step(G2);
[y3, t3] = step(G3);

u = ones(size(t2));

figure;
plot(t1, y1, 'b--', 'LineWidth', 2); % Respuesta del sistema G1
hold on;
plot(t2, y2, 'r', 'LineWidth', 2); % Respuesta del sistema G2
plot(t3, y3, 'g--', 'LineWidth', 1.75); % Respuesta del sistema G3
plot(t2, u, 'k:', 'LineWidth', 1.5); % Entrada de fuerza constante
xlabel('Tiempo (s)');
ylabel('Magnitud (m)');
title('Respuesta a un Escalón', 'FontSize', 16);
legend('G Manual', 'G con ED', 'G con Simulink', 'Entrada');
grid on;