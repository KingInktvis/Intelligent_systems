function d =  EuclideanDistance.(v1, v2)
    x = v1(1) - v2(1);
    x = x * x;
    y = v1(2) - v2(2);
    y = y * y;
    d = x + y;
end
