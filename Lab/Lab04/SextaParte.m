%% Sexta Parte
close all; clear; clc;
opcion = 7;

switch opcion
    case 1
        num = 1;
        den = [1 -1];
        text = "Respuesta al Escalón Unitario | G1";
    case 2
        num = 4;
        den = [1 2];
        text = "Respuesta al Escalón Unitario | G2";
    case 3
        num = 10;
        den = [1 10];
        text = "Respuesta al Escalón Unitario | G3";
    case 4
        num = 1;
        den = [1 1 -12];
        text = "Respuesta al Escalón Unitario | G4";
    case 5
        num = 5000;
        den = [1 150 5000];
        text = "Respuesta al Escalón Unitario | G5";
    case 6
        num = [5000 0];
        den = [1 150 5000];
        text = "Respuesta al Escalón Unitario | G6";
    case 7
        num = 100;
        den = [1 20 100];
        text = "Respuesta al Escalón Unitario | G7";
    otherwise
        disp('Opción no válida');
end

G = tf(num, den);

polos = pole(G);
ceros = zero(G);

G
polos
ceros

pzplot(G);

[y, t] = step(G); 
t_stop = t(end);
entrada = ones(size(t)); 

figure;
plot(t, entrada, '--', 'LineWidth', 1.5); % Graficar la entrada
hold on;
plot(t, y, 'LineWidth', 1.5); % Graficar la salida
title(text, 'FontSize', 16);
xlabel('Tiempo (s)');
ylabel('Salida');
legend('Entrada', 'Salida');
grid on;
hold off;
