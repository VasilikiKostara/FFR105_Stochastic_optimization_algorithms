function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    
    numberOfCities = size(pheromoneLevel, 1);
    probabilities = zeros(numberOfCities);
    
    startingCity = randi(numberOfCities);
    path = [startingCity];

    while length(path) < 50 
        currentCity = path(end);

        
        % roulette-wheel selection:
        denominator = 0;

        for L = 1:numberOfCities
            if ~ismember(L, path)
                denominator = denominator + pheromoneLevel(L, currentCity)^alpha * visibility(L, currentCity)^beta;
            end
        end
    
        for i = 1:numberOfCities
            if ~ismember(i, path)
                numerator = pheromoneLevel(i, currentCity)^alpha * visibility(i, currentCity)^beta;
                probabilities(i, currentCity) = numerator/denominator;
            end
        end
        transitionProbabilities = probabilities(:, currentCity);
    
        cum = 0;
        r = rand;
        
        for i = 1:numberOfCities
            nextCityProbability = transitionProbabilities(i);
            cum = cum + nextCityProbability;
            if cum > r
                nextCity = i;
                break
            end
        end
        path(end+1) = nextCity;
    end
end

    
    
    


