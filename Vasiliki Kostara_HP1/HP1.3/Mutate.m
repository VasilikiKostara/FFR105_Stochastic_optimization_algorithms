function mutatedIndividual = Mutate(individual, mutationProbability)

    numberOfGenes = size(individual, 2);
    mutatedIndividual = individual;
    
    for j = 1:numberOfGenes
       
        if rand<mutationProbability
            mutatedIndividual(j) = 1 - individual(j);
        end
    
    end

end
