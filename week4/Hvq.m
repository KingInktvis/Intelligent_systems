function d = Hvq(prototypes, data)
    distance = 0;
    s = size(data);
    for i=1:s(1)
        c = nearest(prototypes, data(i,:));
        distance = distance + distanceSquared(prototypes(c,:), data(i,:));
    end
    d = distance;
end
