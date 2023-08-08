%% Weird fft plotting

my_vals = linspace(990, 1000, 100);
my_wave = zeros();
for i = 1:length(my_vals)
    my_wave(i, i) = sin(2 * (i));
end

plot(my_wave)
frequencey_matrix = fft(my_wave);

plot(frequencey_matrix);
axis off
grid off