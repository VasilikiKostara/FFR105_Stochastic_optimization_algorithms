function x = InitializePositions(nParticles, nDimensions, xMin, xMax)

    x = zeros(nParticles, nDimensions);
    
    for i = 1:nParticles
        for j = 1:nDimensions
            x(i, j) = xMin + rand * (xMax - xMin);
        end
    end

end