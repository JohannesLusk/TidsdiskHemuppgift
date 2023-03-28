y1 = timevariantFunc(1);
y2 = timevariantFunc(2);

l = linspace(0,20,20);
figure(1);
clf; hold on;
stem(l,y1,'ko');
stem(l,y2,'ro');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('y[n]');
legend({'y(x[\delta[n]]', 'y(x[\delta[n-1]]'})


