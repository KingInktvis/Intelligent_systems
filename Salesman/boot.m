% City count
n=50;
% Amount of attempts to fix the path
maxsteps=100;

temp=0.1;
% The used method
met=1;
%Start app
% attempt1 = tsp(n,maxsteps,temp,met)

temperature = [0.5 0.2 0.1 0.05 0.02 0.01];
var = zeros(1, 6);
ave = zeros(1, 6);

for index = 1:6
    temp = tsp(n,maxsteps,temperature(index),met);
    ave(index) = temp(1);
    var(index) = sqrt(temp(2));
end

figure(3);
errorbar(temperature, ave, var)
title(['<l> vs T with the stddev sqrt[var(l)] as errorbars'],   ...
'fontsize',16);
xlabel(['Temperature T'],'fontsize',16);
ylabel(['Average <l>'],'fontsize',16);
