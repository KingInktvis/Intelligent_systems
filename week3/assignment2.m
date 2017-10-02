S1 = [-30.8508 23.6509 -15.4613 -0.0466 26.5835 41.1727 -23.5292 47.8198 29.8043 7.9640 4.1434 3.4718 0.9068 10.6914 11.5387 34.7819 55.8093 24.0074 3.7086 28.7557 15.4968 -20.8930 38.4767 19.2119 14.0552 25.4574 17.8422 -18.2446 5.1299 5.6184];
S2 = [44.6799 66.8210 41.2427 45.1618 42.8800 38.2579 48.0776 47.2593 65.3007 47.5098 39.3579 66.0346 62.3468 47.7037 34.9384];
T = [5 23 40 70 95];
y1 = zeros(size(S1));
y2 = zeros(size(S2));
yt = zeros(size(T));
figure
hold on
scatter(S1, y1, 'bo')
scatter(S2, y2, 'ro')
scatter(T, yt, 'ks')
figure
hold on
fplot(@(x) gaus2(x),[-60, 90])
fplot(@(x) gaus1(x))

% 2.3
pr1 = priorprobability(S1,S2);
pr2 = priorprobability(S2,S1);

figure
hold on
fplot(@(x) pr2 * gaus2(x),[-60, 90])
fplot(@(x) pr1 * gaus1(x))
scatter(S1, y1, 'bo')
scatter(S2, y2, 'ro')
scatter(T, yt, 'ks')

% 2.3
% 0.6663 * (1/ (2 * Pi) ^ 0.5 * 21.2131)
% std(S1)
% std(S2)
% 0.6663 * (1/ (2 * Pi) ^ 0.5 * 21.2131) * Exp[-0.5 * (((x - 12.9024) ^ 2) / 449.9946)] = 0.3337 * (1/ (2 * Pi) ^ 0.5 * 10.6773) * Exp[-0.5 * (((x - 49.1715) ^ 2) / 114.0052)]
nv = [5 23 40 70 95];

for i = nv
    if i > 37 && i < 86
        scatter(i, 0.001, 'bo')
    else
        scatter(i, 0.001, 'ro')
    end

end
