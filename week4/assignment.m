% Initialize data and its properties
file = load('w6_1x.mat');
data = file.w6_1x;
s = size(data);
N = s(2);
P = s(1);

% Initilize parameters
K = 2;
n = 0.5;
tMax = 100;

% Initialize prototypes
W = [];
for i = 1:K
    x = rand();
    y = rand();
    Wi = [x y];
    W = [W; Wi];
end

% Initialize Hvq history
history = zeros(tMax + 1, 1);
history(1) = Hvq(W, data);

for t = 1:tMax
    r = randperm(P);
    for i = r
        point = data(i,:);
        n = nearest(W, point);
        W(n, 1) = W(n, 1) + n * (point(1) - W(n, 1));
        W(n, 2) = W(n, 2) + n * (point(2) - W(n, 2));
    end
    history(t + 1) = Hvq(W, data);
end
history
figure
hold on
scatter(data(:,1),data(:,2), 2, 'r')
scatter(W(:,1),W(:,2), 10, 'b')
figure
plot(history)
