function  list = proximityOrder(protos, point)
    v = 1;
    s = size(protos);
    order = zeros(s(1), 1);
    distances = zeros(s(1), 1);

    d =  EuclideanDistance(protos(1,:), point);


    for i = 1:s(1)
        td =  EuclideanDistance(protos(i,:), point);
        order(i) = i;
        distances(i) = td;
    end

% Bubblesort
    for i = 1:s(1)
        for j = 1:s(1)
            if j < s(1)
                if distances(j) > distances(j + 1)
                    to = order(j);
                    order(j) = order(j + 1);
                    order(j + 1) = to;

                    td = distances(j);
                    distances(j) = distances(j + 1);
                    distances(j + 1) = td;
                end
            end
        end
    end
    list = order;
end
