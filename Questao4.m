clc
clear all
% Coeficientes
f = [50 60 30 45];
A = [0 0 0 0];
b = [0];
Aeq = [1 1 1 1];
beq = [850];

% Limites superior e inferior
lb = [140 200 250 60];
ub = [300 450 600 250];

fprintf('\nQuestao 4: \n')
fprintf('Despacho para a hora em que a carga de 850MW: \n')
[x, S] = linprog(f,A,b,Aeq,beq,lb,ub); %Primeira Hora

fprintf('UG1 = %4.2f \n',x(1,1));
fprintf('UG2 = %4.2f \n',x(2,1));
fprintf('UG3 = %4.2f \n',x(3,1));
fprintf('UG4 = %4.2f \n',x(4,1));
fprintf('Verificando qtd produzida: %4.2f \n',x(1,1)+x(2,1)+x(3,1)+x(4,1))
fprintf('Valor do despacho minimizado = $ %4.2f \n',S(1,1));

% Coeficientes
f = [50 60 30 45];
A = [0 0 0 0];
b = [0];
Aeq = [1 1 1 1];
beq = [750];

% Limites superior e inferior
lb = [140 200 250 60];
ub = [300 450 600 250];

fprintf('\nDespacho para a hora em que a carga de 750MW: \n')

[x, S] = linprog(f,A,b,Aeq,beq,lb,ub); %Segunda Hora

fprintf('UG1 = %4.2f \n',x(1,1));
fprintf('UG2 = %4.2f \n',x(2,1));
fprintf('UG3 = %4.2f \n',x(3,1));
fprintf('UG4 = %4.2f \n',x(4,1));
fprintf('Verificando qtd produzida: %4.2f \n',x(1,1)+x(2,1)+x(3,1)+x(4,1))
fprintf('Valor do despacho minimizado = $ %4.2f \n',S(1,1));