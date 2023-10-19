function pathLength = GetPathLength(path, cityLocation)
        
    pathLength = 0;
    numberOfCities = size(cityLocation, 1);
    
    for j = 1:(numberOfCities - 1)
        p1 = cityLocation(path(j), :);
        p2 = cityLocation(path(j+1), :);
        pathLength = pathLength + norm(p2 - p1);
    end

end
