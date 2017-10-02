% Initialize data and its properties
file = load('w6_1x.mat');
data = file.w6_1x;
s = size(data);
N = s(2);
P = s(1);

% Initilize parameters
K = 3;
n = 0.5;
tMax = 3;

% Initialize prototypes
W = [];
for i = 1:K
    x = rand();
    y = rand();
    Wi = [x y];
    W = [W; Wi];
end

nearest(W, data(2,:));
for i = 1:tMax
    r = randperm(P);
    for i = r
        point = data(i,:);
        n = nearest(W, point);
        W(n, 1) = W(n, 1) + n * (point(1) - W(n, 1));
        W(n, 2) = W(n, 2) + n * (point(2) - W(n, 2));
    end
    figure
    hold on
    scatter(data(:,1),data(:,2), 2, 'r')
    scatter(W(:,1),W(:,2), 2, 'b')
end