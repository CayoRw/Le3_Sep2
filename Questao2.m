clc
clear all
% Coeficientes
f = [-30 -50];
A = [4 5; 2 4];
b = [250; 140];
Aeq = [0 0];
beq = [0];

% Limites superior e inferior
lb = [0 0];
ub = [inf inf];

fprintf('\n Questao 2: \n')
[x, S] = linprog(f,A,b,Aeq,beq,lb,ub);

fprintf('X(1) = %4.2f \n',x(1,1));
fprintf('X(2) = %4.2f \n',x(2,1));
fprintf('Valor S = %4.2f \n',-S(1,1));
fprintf('Verificando as condicoes de desigualdade: \nHoras de trabalho restantes: 250 - 4*X1 + 5*X2 = %4.2f \n',250 -4*x(1,1)+5*x(2,1))
fprintf('Materia prima restante: 140 - 2*X1 + 4*X2 = %4.2f \n',140 -2*x(1,1)+4*x(2,1))
