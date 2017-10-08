function  list = nearest(protos, point)
    v = 1;
    order = zeros(size(protos), 1);
    distances = zeros(size(protos), 1);

    d = distanceSquared(protos(1,:), point);

    s = size(protos);
    for i = 1:s(1)
        td = distanceSquared(protos(i,:), point);
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
