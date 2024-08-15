% BE3024 - Sistemas de Control 1 (Biomédica)
% Laboratorio 1
% Daniela Navas & Aury Campaneros
% -------------------------------------------------------------------------
%% Sexta Parte
R = 2000;
C1 = 0.2 * (10^-6);
C2 = 10 * (10^-6);

num = [1/(R*R*C1*C2)];
den = [1 (R+R)/(R*R*C2) 1/(R*R*C1*C2)];

G_opamp = tf(num, den);

tmax = 2*(1/3);