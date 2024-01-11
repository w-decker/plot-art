function X = itergradient(size)

    arguments
        size (1, :) double {mustBeVector}
    end
    
    X = ones(size);
    
    for i=1:length(X)

        R = randi([0, 20]);
        X(:, i) = i + R;

    end


end