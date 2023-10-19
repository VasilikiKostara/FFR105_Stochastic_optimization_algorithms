clear all

nParticles = 20;
nDimensions = 2;

xMin = -5;
xMax = +5;

alpha = 1;
timeStepLength = 1;
vMax = (xMax - xMin) / timeStepLength;

cognitiveComponent = 2;
socialComponent = 2;

initialWeight = 1.4;
constantFactor = 0.99;
lowerBound = 0.32;

nRuns = 1000;

weight = initialWeight;
x = InitializePositions(nParticles, nDimensions, xMin, xMax);
v = InitializeVelocities(nParticles, nDimensions, alpha, timeStepLength, xMin, xMax);
bestParticlePositions = x;
xSwarmBest = UpdateBestSwarmPosition(bestParticlePositions);

for k = 1:nRuns
    v = UpdateVelocities(weight, cognitiveComponent, socialComponent, x,v,bestParticlePositions, xSwarmBest, timeStepLength, vMax);
    x = UpdatePositions(v, timeStepLength);
    weight = InertiaWeights(weight, constantFactor, lowerBound);
    bestParticlePositions = UpdateBestParticlePositions(x,bestParticlePositions);    
    xSwarmBest = UpdateBestSwarmPosition(bestParticlePositions);
end

xStep = 0.1;
a = 0.01;
PlotContour(xMin, xMax, xStep, a, bestParticlePositions, xSwarmBest)

