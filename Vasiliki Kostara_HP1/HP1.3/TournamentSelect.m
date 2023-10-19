function selectedIndividualIndex = TournamentSelect(fitnessList, tournamentProbability, tournamentSize)

randomIndividuals = zeros(tournamentSize, 2);

for i = 1:tournamentSize    
    index = randi(length(fitnessList));
    randomIndividuals(i, :) = [index,fitnessList(index)];
end

randomIndividuals = sortrows(randomIndividuals,2);

for i = 1:tournamentSize
    r = rand;
    if r<tournamentProbability
        selectedIndividualIndex = randomIndividuals(i,1);
        return;
    end
end

selectedIndividualIndex = randomIndividuals(end,1);


end
