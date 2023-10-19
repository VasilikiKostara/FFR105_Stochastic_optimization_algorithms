% This function should run gradient descent until the L2 norm of the
% gradient falls below the specified threshold.

function x = RunGradientDescent(xStart, mu, eta, gradientTolerance)

    x0 = xStart;

    while true
        gradF = ComputeGradient(x0,mu);
        normofGradL2 = sqrt(gradF(1)^2 + gradF(2)^2);
        if normofGradL2 > gradientTolerance
            x = x0 - eta * gradF;
            x0 = x;
        else
            break
        end
    end
end


