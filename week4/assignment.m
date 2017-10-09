% Initialize data and its properties
file = load('w6_1x.mat');
data = file.w6_1x;
s = size(data);
N = s(2);
P = s(1);

% Initilize parameters
K = 2;
n = 0.05;
tMax = 10;

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
        % n = nearest(W, point);
        % W(n, 1) = W(n, 1) + n * (point(1) - W(n, 1));
        % W(n, 2) = W(n, 2) + n * (point(2) - W(n, 2));
        prox = proximityOrder(W, point);
        rankDivider = 1;
        for c=1:K
            W(prox(c), 1) = W(prox(c), 1) + rankDivider * n * (point(1) - W(prox(c), 1));
            W(prox(c), 2) = W(prox(c), 2) + rankDivider * n * (point(2) - W(prox(c), 2));
            rankDivider = rankDivider / 5;
        end
        W(prox(1), 1) = W(prox(1), 1) + n * (point(1) - W(prox(1), 1));
        W(prox(1), 2) = W(prox(1), 2) + n * (point(2) - W(prox(1), 2));

    end
    history(t + 1) = Hvq(W, data);
end
history
figure
hold on
scatter(data(:,1),data(:,2), 2, 'r')
scatter(W(:,1),W(:,2), 10, 'b')
figure
title('HVQ learning curve')
plot(history)
xlabel('epochs')
ylabel('cost')
