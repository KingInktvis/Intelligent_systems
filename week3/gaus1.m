function p = gaus1(x)
    S1 = [-30.8508 23.6509 -15.4613 -0.0466 26.5835 41.1727 -23.5292 47.8198 29.8043 7.9640 4.1434 3.4718 0.9068 10.6914 11.5387 34.7819 55.8093 24.0074 3.7086 28.7557 15.4968 -20.8930 38.4767 19.2119 14.0552 25.4574 17.8422 -18.2446 5.1299 5.6184];

    b = mean(S1);
    c = std(S1);
    Q2 = var(S1);

    e = exp((-1/2 * (((x - b)*(x - b))/Q2)));
    p = (1 / (sqrt(2* pi) * c)) * e;
end
