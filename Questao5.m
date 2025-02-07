clc
clear all
% Questao 5
% Coeficientes do quadprog
H = 2*[0.0015 0 0 ; 0 0.0025 0; 0 0 0.0020];
f = [7 6.75 6.90];
A = [0 0 0];
b = [0];
Aeq = [1 1 1];
beq = [2850];

% Limites superior e inferior
lb = [310 320 265];
ub = [1200 1300 1050];
 
fprintf(' \n Questao 5: \n')
[x, S, exitflag, output, lambda] = quadprog(H,f,A,b,Aeq,beq,lb,ub);

fprintf('UG1 = %4.2f \n',x(1,1));
fprintf('UG2 = %4.2f \n',x(2,1));
fprintf('UG3 = %4.2f \n',x(3,1));
fprintf('Valor S + custos iniciais = $ %4.2f \n', S(1,1)+800+1200+1500);
fprintf('Lambda eqlin =  %4.2f \n', lambda.eqlin)
fprintf('Lambda lower =  %4.2f \n', lambda.lower)
fprintf('Lambda upper =  %4.2f \n', lambda.upper)