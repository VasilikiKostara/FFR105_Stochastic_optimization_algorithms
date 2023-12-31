% First compute the function value, then compute the fitness
% value; see also the problem formulation.

function fitness = EvaluateIndividual(x)

g1 = 1.5 - x(1) + x(1) * x(2);
g2 = 2.25 - x(1) + x(1) * (x(2))^2;
g3 = 2.625 - x(1) + x(1) * (x(2))^3;

g = g1^2 + g2^2 + g3^2;

fitness = (g+1)^(-1);

end
