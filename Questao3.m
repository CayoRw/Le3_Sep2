clc
clear all
% Coeficientes
f = [6 3.5 5];
A = [-0.55 -0.6 -0.75; -0.15 -0.4 -0.18];
b = [-0.58; -0.18];
Aeq = [1 1 1];
beq = [4000];

% Limites superior e inferior
lb = [0 0 0];
ub = [1500 1600 1400];

fprintf('\n Questao 3: \n')
[x, S] = linprog(f,A,b,Aeq,beq,lb,ub);

fprintf('Grãos MG = %4.2f \n',x(1,1));
fprintf('Grãos SP = %4.2f \n',x(2,1));
fprintf('Grãos BA = %4.2f \n',x(3,1));
fprintf('Verificando qtd produzida: %4.2f \n',x(1,1)+x(2,1)+x(3,1))
fprintf('Valor custo minimizado = $ %4.2f \n',S(1,1));
fprintf('Verificando as condicoes de desigualdade: \nAroma(%%): (55*MG + 60*SP + 75*BA)/4000 = %4.2f \n',(0.55*x(1,1)+0.60*x(2,1)+0.75*x(3,1))/40)
fprintf('Intensidade(%%) : (15*MG + 40*SP + 18*BA)/4000 = %4.2f \n',(0.15*x(1,1)+0.40*x(2,1)+0.18*x(3,1))/40)
fprintf('Verificando custo: 6*MG + 3.5*SP + 5*BA = %4.2f \n',6*x(1,1)+3.5*x(2,1)+5*x(3,1))
fprintf('Produtos restantes disponíveis: \n')
fprintf('Grãos MG = %4.2f \n',1500-x(1,1));
fprintf('Grãos SP = %4.2f \n',1600-x(2,1));
fprintf('Grãos BA = %4.2f \n',1400-x(3,1));
