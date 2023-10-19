function weight = InertiaWeights(weight,constantFactor, lowerBound) 

if weight >= lowerBound
        weight = weight*constantFactor;
end

end