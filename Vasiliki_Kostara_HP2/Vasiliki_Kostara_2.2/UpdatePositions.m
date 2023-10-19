function position = UpdatePositions(velocity, timeStepLength)
    nParticles = size(velocity, 1);
    nDimensions = size(velocity, 2);

    position = zeros(nParticles, nDimensions);

    for i = 1:nParticles
        for j = 1:nDimensions
            position(i, j) = position(i, j) + velocity(i, j) * timeStepLength;
        end
    end

end