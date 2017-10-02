function  index = nearest(protos, point)
    v = 1;
    d = distanceSquared(protos(1,:), point);
    s = size(protos);
    for i = 1:s(1)
        td = distanceSquared(protos(i,:), point);
        if td < d
            d = td;
            v = i;
        end
    end
    index = v;
end
