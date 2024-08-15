%% Inciso C
close all; clear; clc;

vo = log(2)/0.2;
num1 = [1 1];
den1 = [1 1 1 0];

num2 = 1;
den2 = [1 1 1 0];

G1 = tf(num1, den1);
G2 = tf(num2, den2);

[y1, t] = step(G1);
y2 = step(G2);

u = ones(size(t));

figure;
plot(t, y1, 'b', 'LineWidth', 2); % Respuesta del sistema G1
hold on;
plot(t, y2, 'r--', 'LineWidth', 2); % Respuesta del sistema G2
plot(t, u, 'k:', 'LineWidth', 1.5); % Entrada de fuerza constante
xlabel('Tiempo (s)');
ylabel('Magnitud (m)');
title('Respuesta a una fuerza Unitaria Constante', 'FontSize', 16);
legend('G1', 'G2', 'Entrada');
grid on;


