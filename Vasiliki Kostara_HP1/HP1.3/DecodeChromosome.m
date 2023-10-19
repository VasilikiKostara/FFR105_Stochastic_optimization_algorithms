% Note: Each component of x should take values in [-a,a], where a = maximumVariableValue.

function x = DecodeChromosome(chromosome,numberOfVariables,maximumVariableValue)

numberOfGenes = size(chromosome,2);
chromosomeDivision = fix(numberOfGenes/numberOfVariables);

x = zeros(1,numberOfVariables);

for i = 1:numberOfVariables
    for j = 1:chromosomeDivision
        x(i) = x(i) +chromosome(j+chromosomeDivision*(i-1)) * 2^(-j);
    end

    x(i) = -maximumVariableValue + 2*maximumVariableValue * x(i)/(1-2^(-chromosomeDivision));
end

end

