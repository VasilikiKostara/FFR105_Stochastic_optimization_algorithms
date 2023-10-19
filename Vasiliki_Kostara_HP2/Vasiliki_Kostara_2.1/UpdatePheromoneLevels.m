function pheromoneLevel = UpdatePheromoneLevels(pheromoneLevel,deltaPheromoneLevel,rho)
    
    %pheromoneLevel = InitializePheromoneLevels(numberOfCities, tau0);
    %pheromoneLevel = zeros(numberOfcities, 1);


        pheromoneLevel = (1 - rho) * pheromoneLevel + deltaPheromoneLevel;

end