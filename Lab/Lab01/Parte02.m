% BE3024 - Sistemas de Control 1 (Biomédica)
% Laboratorio 1
% Daniela Navas & Aury Campaneros
% -------------------------------------------------------------------------
%% Segunda Parte
% R = 0.8;
% L = 8*(10^-3);
% C = 1000 * (10^-6);

R = 1000;
L = 10*(10^-3);
C = 47 * (10^-6);

num = [1/(C*L)];
den = [1 R/L 1/(C*L)];

G1 = tf(num, den);

tmin = 0;
% tmax = 0.15;
% tmax = 0.5;
% tmax = 2*(1/3);
tmax = 2*(3/2);

t = linspace(tmin,tmax,1000);
%% 4.
G1_sim = tf(linsys1);
G2_sim = tf(linsys3);