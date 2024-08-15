% Ejemplo de estructura Switch Case con 7 casos en MATLAB

%% Laboratorio 4
% close all; clear; clc; 
opcion = 7;

switch opcion
    case 1
        % Original
        R1 = 2000;
        R2 = 2000;
        C1 = 0.2 *10^-6;
        C2 = 10 * 10^-6;
        text = "Respuesta a Escalón 5V | Caso 1";
    case 2
        % Polos complejos conjugados, más cercanos al eje real:
        R1 = 2000;
        R2 = 2000;
        C1 = 1 *10^-6;
        C2 = 10 * 10^-6;
        text = "Respuesta a Escalón 5V | Caso 2";
    case 3
        % Polos complejos conjugados, más alejados del eje real
        R1 = 2000;
        R2 = 2000;
        C1 = 0.02 *10^-6;
        C2 = 10 * 10^-6;
        text = "Respuesta a Escalón 5V | Caso 3";
    case 4
        R1 = 2000;
        R2 = 1000;
        C1 = 0.667 *10^-6; % En serie 1micro y 2micro
        C2 = 5 * 10^-6;
        text = "Respuesta a Escalón 5V | Caso 4";
    case 5
        R1 = 2000;
        R2 = 10000;
        C1 = 0.04*10^-6; % 4 de 0.01 en paralelo 
        C2 = 10 * 10^-6;
        text = "Respuesta a Escalón 5V | Caso 5";
    case 6
        R1 = 2000;
        R2 = 2000;
        C1 = 10 *10^-6;
        C2 = 10 * 10^-6;
        text = "Respuesta a Escalón 5V | Caso 6";
    case 7
        R1 = 2000;
        R2 = 20000;
        C1 = 1 *10^-6;
        C2 = 0.6 * 10^-6; % 2 1micro en serie & 0.1micro en paralelo
        text = "Respuesta a Escalón 5V | Caso 7";
    otherwise
        disp('Opción no válida');
end

num = [1/(R1*R2*C1*C2)];  
den = [1 ((R1+R2)/(R1*R2*C2)) (1/(R1*R2*C1*C2))]; 

G = tf(num, den);

polos = pole(G);

[y, t] = step(5 * G); 
t_stop = t(end);
entrada = 5 * ones(size(t)); 

% figure;
% plot(t, entrada, '--', 'LineWidth', 1.5); % Graficar la entrada
% hold on;
% plot(t, y, 'LineWidth', 1.5); % Graficar la salida
% title(text, 'FontSize', 16);
% xlabel('Tiempo (s)');
% ylabel('Magnitud (V)');
% legend('Entrada', 'Salida');
% grid on;
% hold off;
stepinfo(G)

[wn,zeta] = damp(G);

wd = wn .* sqrt(1 - zeta.^2);