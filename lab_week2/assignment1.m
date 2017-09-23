data = matfile("lab_week2_data/lab1_1.mat")
men = data.length_men;
women = data.length_women;
figure
test = [men, women]
hist(test)
