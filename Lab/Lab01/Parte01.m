% BE3024 - Sistemas de Control 1 (Biomédica)
% Laboratorio 1
% Daniela Navas & Aury Campaneros
% -------------------------------------------------------------------------
%% Primera Parte
% 1.
R = 0.8;
L = 8*(10^-3);
C = 1000 * (10^-6);

num = [1/(C*L)];
den = [1 R/L 1/(C*L)];

G1 = tf(num, den);

%% 2. 
t = linspace(0,0.15,1000);

[y1, t1] = impulse(G1,t);

figure(1)
plot(t1, y1, 'Color', 'b', 'LineWidth', 1);  
xlabel('Tiempo (s)');             % Título del eje X
ylabel('Amplitud');             % Título del eje Y
title('Respuesta Impulsiona G1', 'FontSize', 14, 'FontWeight', 'bold');  % Título general 
grid on; 

%% 3.
[y11, t11] = step(G1,t);

figure(2)
plot(t11, y11, 'Color', 'b', 'LineWidth', 1);  
xlabel('Tiempo (s)');             % Título del eje X
ylabel('Amplitud');             % Título del eje Y
title('Respuesta al Escalón G1', 'FontSize', 14, 'FontWeight', 'bold');  % Título general 
grid on; 

%% 4.
R2 = 1000;
L2 = 10*(10^-3);
C2 = 47 * (10^-6);

num2 = [1/(C2*L2)];
den2 = [1 R2/L2 1/(C2*L2)];

G2 = tf(num2, den2);
%% 5. 
t2 = linspace(0,0.5,1000);

[y2, t2] = impulse(G2,t2);

figure(3)
plot(t2, y2, 'Color', 'b', 'LineWidth', 1);  
xlabel('Tiempo (s)');             % Título del eje X
ylabel('Amplitud');             % Título del eje Y
title('Respuesta al Escalón G2', 'FontSize', 14, 'FontWeight', 'bold');  % Título general 
grid on; 

%% 6.
[y12, t12] = step(G2,t2);

figure(4)
plot(t12, y12, 'Color', 'b', 'LineWidth', 1);  
xlabel('Tiempo (s)');             % Título del eje X
ylabel('Amplitud');             % Título del eje Y
title('Respuesta al Escalón G2', 'FontSize', 14, 'FontWeight', 'bold');  % Título general 
grid on; 
