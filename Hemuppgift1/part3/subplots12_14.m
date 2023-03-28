tiledlayout(1,2);
l = linspace(0,20,20);

% Tile 1
nexttile
y = linearFunc;
stem(l,y,'ro');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('y[n]');
title("uppg 14")

% Tile 2
nexttile
v = timevariantFunc(1);
stem(l,v,'ko');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('y[n]');
title("uppg 12")