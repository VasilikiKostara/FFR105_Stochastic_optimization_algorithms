function PlotContour(xMin, xMax, xStep, a, bestParticlePositions, xSwarmBest)
    [x, y] = meshgrid(xMin:xStep:xMax, xMin:xStep:xMax);
    f_xy = log(a + (x.^2 + y - 11).^2 + (x + y.^2 - 7).^2);

    contour(x, y, f_xy);
    hold on;
    scatter(bestParticlePositions(:, 1), bestParticlePositions(:, 2));
    scatter(xSwarmBest(1), xSwarmBest(2), 50, "red", "filled");
    hold off;
end