%% Toeplitz and countour1

x = [3, 7, 8, 4, 6];
X = toeplitz(x, fliplr(x));

y = 1:20;
Y = toeplitz(y);

figure(1), hold on
a1 = subplot(121);
contourf(X)
axis off
grid off
shading interp
colormap(a1, "jet")


a2 = subplot(122);
contourf(Y)
axis off
grid off
shading interp
colormap(a2, "pink")
