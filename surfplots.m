%% Cool surf plots

X = magic(20);
Y = zeros(20);
for i= 1:length(Y)
    for j= 1:height(Y)
        Y(i,j) = randi([-20 100]);
    end
end
Z = magic(25);

figure(1), hold on
a1 = subplot(131);
surf(X)
colormap(a1, "parula")
axis off
grid off
shading interp

a2 = subplot(132);
surf(Y)
colormap(a2, "autumn")
axis off
grid off
shading interp

a3 = subplot(133);
surf(Z)
colormap(a3, "cool")
axis off
grid off
shading interp
