%% Pascal matrix

x = pascal(100);
y = rot90(x);
z = rot90(y);
xx = rot90(z);

X = x .* y .* z .* xx;

surf(X)
axis off
grid off
colormap bone
shading interp
