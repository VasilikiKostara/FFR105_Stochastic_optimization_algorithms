function xSwarmBest = UpdateBestSwarmPosition(bestParticlePositions)
    nParticles = size(bestParticlePositions, 1);
  
    iSwarmBest = randi(nParticles);
    
    for i = 1:nParticles
        if Evaluation(bestParticlePositions(i, :)) < Evaluation(bestParticlePositions(iSwarmBest, :))
             iSwarmBest = i;
        end
    end
       
    xSwarmBest = bestParticlePositions(iSwarmBest, :);
end