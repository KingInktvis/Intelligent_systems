% City count
n=100;
% Amount of attempts to fix the path
maxsteps=10;

temp=0.1;
% The used method
met=1;
%Start app
% attempt1 = tsp(n,maxsteps,temp,met)

x = [0.5 0.2 0.1 0.05 0.02 0.01];
var = zeros(1, 6);
ave = zeros(1, 6);

for index = 1:6
    temp = tsp(n,maxsteps,index,met);
    ave(index) = temp(1);
    var(index) = temp(2);
end

errorbar(x, ave, var)
