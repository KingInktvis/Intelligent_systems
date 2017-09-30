f = matfile("lab_week3_data/lab3_1.mat");
salmon = f.p_salmon
seabass = f.p_seabass
figure
hold on
plot(salmon)
plot(seabass)
