% Laboratorio 2 
% Daniela Navas & Aura Campaneros
%% TERCERA PARTE

M1 = 320; %kg
M2 = 2500; % kg
k1 = 500000; % N/m
fv1 = 15020; % Ns/m

k2 = 40; % N/m
fv2 = 16020; %Ns/m

% k2 = 500; % N/m
% fv2 = 10600; %Ns/m

b1 = fv2/(M1*M2);
b0 = k2/(M1*M2);

a3 = ((fv1 + fv2)/M1) + (fv2/M2);
a2 = ((k1 + k2)/M1) + ((fv1*fv2)/(M1*M2)) + (k2/M2);
a1 = ((fv1*k2)+(fv2*k1))/(M1*M2);
a0 = (k1*k2)/(M1*M2);

b = [b1 b0];
a = [1 a3 a2 a1 a0];

G1 = tf(b, a);

a = 500000; % N
tmax = 1.5; % Segundos
t = 0:0.0001:tmax; % Tiempo de 0 a 50 segundos con pasos de 0.01 segundos
u = a * ones(size(t)); % Escalon Unitario de 500 kN

% Respuesta al escalón
[y, t] = lsim(G1, u, t);

% Graficar la respuesta}
plot(t, y)
title('Respuesta a un escalón de 500 kN')
xlabel('Tiempo (s)')
ylabel('Posición de M2 (m)')
grid on


