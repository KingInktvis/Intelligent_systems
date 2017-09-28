S1 = [ -30.8508 23.6509 -15.4613 -0.0466 26.5835 41.1727 -23.5292 47.8198 29.8043 7.9640 4.1434 3.4718 0.9068 10.6914 11.5387 34.7819 55.8093 24.0074 3.7086 28.7557 15.4968 -20.8930 38.4767 19.2119 14.0552 25.4574 17.8422 -18.2446 5.1299 5.6184];
S2 = [44.6799 66.8210 41.2427 45.1618 42.8800 38.2579 48.0776 47.2593 65.3007 47.5098 39.3579 66.0346 62.3468 47.7037 34.9384];
T = [5 23 40 70 95];
y1 = zeros(size(S1));
y2 = zeros(size(S2));
yt = zeros(size(T));
hold on
scatter(S1, y1, 'bo')
scatter(S2, y2, 'ro')
scatter(T, yt, 'ks')