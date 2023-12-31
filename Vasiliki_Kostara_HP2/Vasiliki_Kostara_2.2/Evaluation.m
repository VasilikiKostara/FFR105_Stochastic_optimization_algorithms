function f = Evaluation(x)

    x1 = x(:, 1);
    x2 = x(:, 2);
    
    f = (x1^2 + x2 - 11)^2 + (x1 + x2^2 - 7)^2;
end