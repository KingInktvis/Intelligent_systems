file = load('data_lvq.mat');
data = file.w5_1;
class0 = data(1:50, 1:2);
class1 = data(51:100, 1:2);

z = zeros(50, 1);
o = ones(50, 1);
third = [z; o];
classes = [data, third];

% Initilize parameters
K = 2;
n = 0.002;
tMax = 10;

% Initialize prototypes
W = [];
for c = 1 : 2
    for  i = 1:K
        x = rand();
        y = rand();
        Wi = [x y c - 1];
        W = [W; Wi];
    end
end

W2 = [];
for i = 1:K
    x = rand();
    y = rand();
    Wi = [x y];
    W2 = [W2; Wi];
end
scatter(class0)
