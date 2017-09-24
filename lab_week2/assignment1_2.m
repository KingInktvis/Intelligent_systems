data = matfile("lab_week2_data/lab1_1.mat");
men = data.length_men;
women = data.length_women
male_mistakes = 0;
female_mistakes = 0;

for i = men
    if i < 170
        male_mistakes = male_mistakes + 1;
    end
end

for j = women
    if j > 170
        female_mistakes = female_mistakes + 1;
    end
end

male_mistakes;
female_mistakes;
