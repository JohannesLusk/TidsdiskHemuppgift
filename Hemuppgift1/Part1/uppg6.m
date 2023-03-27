v1 = 0.1; v2 = 0.4;
n = 0:1:19;
func = @(n,v) sin(2*pi*v*n);
x1 = func(n,v1);
x2 = func(n,v2);



%soundsc(x,Fs);

b0 = 0.5;
b1 = 0.5;

N = length(x1); % Length of input signal
y1 = zeros(size(x1)); % Allocate space for outut

y1(1) = b0*x1(1); % First sample, assuming x(0) = 0
for n=2:N % Remaining samples
    y1(n) = b0*x1(n) + b1*x1(n-1);
end

N = length(x2); % Length of input signal
y2 = zeros(size(x2)); % Allocate space for outut

y2(1) = b0*x2(1); % First sample, assuming x(0) = 0
for n=2:N % Remaining samples
    y2(n) = b0*x2(n) + b1*x2(n-1);
end

n = 0:1:19;
figure(1);
clf; hold on;
stem(n,x1,'ko');
stem(n,x2,'ro');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('y[n]');
legend({'y1', 'y2'})