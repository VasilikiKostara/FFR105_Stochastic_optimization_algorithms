function v = InitializeVelocities(nParticles, nDimensions, alpha, timeStepLength, xMin, xMax)

    v = zeros(nParticles, nDimensions);
    
    for i = 1:nParticles
        for j = 1:nDimensions
            v(i, j) = alpha * (0.5 * (xMin - xMax) + rand * (xMax - xMin)) / timeStepLength;
        end
    end

end