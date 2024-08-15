%% Quinta Parte
% Cargar y guardar datos en .mat
% save('Caso1.mat', 't1', "y1");
% save('Caso2.mat', 't2', "y2");
% save('Caso3.mat', 't3', "y3");
% save('Caso4.mat', 't4', "y4");
% save('Caso5.mat', 't5', "y5");
% save('Caso6.mat', 't6', "y6");
% save('Caso7.mat', 't7', "y7");

%%
load('Caso1.mat');
load('Caso2.mat');
load('Caso3.mat');
load('Caso4.mat');
load('Caso5.mat');
load('Caso6.mat');
load('Caso7.mat');

%%
opcion = 7;

switch opcion
    case 1
        t = t1;
        y = y1;
    case 2
        t = t2;
        y = y2;
    case 3
        t = t3;
        y = y3;
    case 4
        t = t4;
        y = y4;
    case 5
        t = t5;
        y = y5;
    case 6
        t = t6;
        y = y6;
    case 7
        t = t7;
        y = y7;
    otherwise
        disp('Opción no válida');
end

stepinfo(y,t,5)
