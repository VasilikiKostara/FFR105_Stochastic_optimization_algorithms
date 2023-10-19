function visibility = GetVisibility(cityLocation)

    numberOfCities = size(cityLocation, 1);
    visibility = zeros(numberOfCities);

    for i = 1:numberOfCities
        for j = 1:numberOfCities
            xj = cityLocation(j, 1);
            yj = cityLocation(j, 2);
            xi = cityLocation(i, 1);
            yi = cityLocation(i, 2);
           
            length = sqrt( (xi - xj)^2 + (yi - yj)^2 );

            if length > 0
                visibility(i, j) = 1/length;
            end
        end
    end

end