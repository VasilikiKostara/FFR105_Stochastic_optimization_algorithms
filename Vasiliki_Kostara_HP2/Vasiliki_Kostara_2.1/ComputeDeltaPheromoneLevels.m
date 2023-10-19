function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)
    
    numberOfAnts = size(pathCollection, 1); % = size(pathLengthCollection, 1)
    numberOfCities = size(pathCollection, 2);
    deltaPheromoneLevel = zeros(numberOfCities);

    for k = 1:numberOfAnts
        singleAntPheromoneLevel = zeros(numberOfCities);
        path = pathCollection(k, :);
        pathLength = pathLengthCollection(k);

        for iPath = 1:(numberOfCities - 1)
            j = path(iPath);
            i = path(iPath + 1);
            
            singleAntPheromoneLevel(i, j) = 1 / pathLength;
        end
        
        deltaPheromoneLevel = deltaPheromoneLevel + singleAntPheromoneLevel;
    end




end