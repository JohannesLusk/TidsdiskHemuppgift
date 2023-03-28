tiledlayout(1,3);
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

nexttile
x = zeros(1,20);
x(1) = 1;
y =filter([0.5,0.5],[1,-0.8],x);

l = linspace(0,length(y),20);
stem(l,y)
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('y[n]');
title("filter Test")