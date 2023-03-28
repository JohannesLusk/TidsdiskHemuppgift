
x = zeros(1,20);
x(1) = 1;
y =filter([0.5,0.5],[1,-0.8],x);

l = linspace(0,length(y),20);
stem(l,y)
axis([-1 20 -1.5 1.5]);