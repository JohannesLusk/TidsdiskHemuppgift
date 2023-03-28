x = zeros(1,20);
x(1) = 1;
x(6) = 1; 

y = zeros(1,20);

a1 = -0.8;
N = length(x);
y(1) = x(1);

for n=2:N
    y(n) = x(n) - a1*y(n-1);
end

n = linspace(0,20,20);
figure(1);
clf; hold on;
stem(n,x,'ko');
stem(n,y,'ro');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('x[n]');
legend({'insignal', 'utsignal'})

