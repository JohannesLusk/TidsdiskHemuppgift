v1 = 0.1; v2 = 0.4;
n = 0:1:19;
func = @(n,v) sin(2*pi*v*n);
x1 = func(n,v1);
x2 = func(n,v2);

a1 = -0.9; a2 = 0.3; b0 = 0.1; b1 = 0.2; b2 = 0.1;

y1 = filter([b0 b1 b2],[1 a1 a2],x1);
y2 = filter([b0 b1 b2],[1 a1 a2],x2);


figure(1);
clf; hold on;
stem(n,y1,'ko');
stem(n,y2,'ro');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('y[n]');
legend({'y1', 'y2'})