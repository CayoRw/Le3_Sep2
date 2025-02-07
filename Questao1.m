clc
clear all
% Questão 1
% Letra A

% Coeficientes
f = [-1 -1];
A = [2 4; 0 -10];
b = [20; -10];
Aeq = [0 0];
beq = [0];

% Limites superior e inferior
lb = [0 0];
ub = [inf inf];
fprintf('Letra A: \n')
[x, S] = linprog(f,A,b,Aeq,beq,lb,ub);
fprintf('X(1) = %4.2f \n',x(1,1));
fprintf('X(2) = %4.2f \n',x(2,1));
fprintf('Valor S = %4.2f \n',-S(1,1));


% Letra B
% Coeficientes
f = [-5 -3];
A = [1 3; 2 2];
b = [7; 15];
Aeq = [1 1];
beq = [5];

% Limites superior e inferior
lb = [0 0];
ub = [4 5];

fprintf('\n Letra B: \n')
[x, S] = linprog(f,A,b,Aeq,beq,lb,ub);

fprintf('X(1) = %4.2f \n',x(1,1));
fprintf('X(2) = %4.2f \n',x(2,1));
fprintf('Valor S = %4.2f \n',-S(1,1));

% Letra C
% Coeficientes do quadprog
H = 2*[4 0 ; 0 5];
f = [0 0];
A = [2 1; 0 0];
b = [2.5; 0];
Aeq = [2 4];
beq = [8];

% Limites superior e inferior
lb = [0 0];
ub = [inf inf];
 
fprintf(' \n Letra C: \n')
[x, S, exitflag, output, lambda] = quadprog(H,f,A,b,Aeq,beq,lb,ub);

fprintf('X(1) = %4.2f \n',x(1,1));
fprintf('X(2) = %4.2f \n',x(2,1));
fprintf('Valor S = %4.2f \n', S(1,1));
%fprintf('Lambda =  %4.2f \n', lambda.eqlin)
