function bestParticlePositions = UpdateBestParticlePositions(x, bestParticlePositions)
    nParticles = size(x, 1);
    
    for i = 1:nParticles        
        if Evaluation(x(i, :)) <  Evaluation(bestParticlePositions(i,:)) 
           bestParticlePositions(i,:) = x(i,:);
        end 
    end

end