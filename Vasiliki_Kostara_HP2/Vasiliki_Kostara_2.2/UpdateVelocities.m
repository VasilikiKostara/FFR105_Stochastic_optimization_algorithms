function v = UpdateVelocities(weight, cognitiveComponent, socialComponent, x,v, bestParticlePositions, xSwarmBest, timeStepLength, vMax)
    nParticles = size(x, 1);
    nDimensions = size(x, 2);
    %v = zeros(nParticles, nDimensions);
    
    for i = 1:nParticles
        p = rand;
        q = rand;
        for j = 1:nDimensions
            v(i, j) = weight * v(i, j) + cognitiveComponent * p * (bestParticlePositions(i, j) - x(i, j)) / timeStepLength + socialComponent * q * (xSwarmBest(1, j) - x(i, j)) / timeStepLength;
    
            if v(i, j) > vMax
                v(i, j) = vMax;
            elseif v(i, j) < -vMax
                v(i, j) = -vMax;
            end
    
        end
    end

end