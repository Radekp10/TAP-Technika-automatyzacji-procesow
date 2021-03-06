function result = control_error(Y, Yzad)
%% funkcja licząca błąd średniokwadratowy
    [sim_time, ny] = size(Y);
    result = zeros(ny,1);
    
    for k = 1 : sim_time
        for y_number = 1 : ny
            result(y_number) = result(y_number) + power(Y(k, y_number) - Yzad(k, y_number), 2);
        end
    end 
end