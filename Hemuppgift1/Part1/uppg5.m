% Task 1 - MA filtering

load handel; %gong, chirp, train, splat, laughter
x = zeros(1,20);
x(2) = 0.5; %x[n] = 1/2(\delta[n-1]
x(1) = 1; %x[n] = 1/2(\delta[n-1] + \delta[n]


b0 = 0.5;
b1 = 0.5;

N = length(x); % Length of input signal
y = zeros(size(x)); % Allocate space for outut

y(1) = b0*x(1); % First sample, assuming x(0) = 0
for n=2:N % Remaining samples
    y(n) = b0*x(n) + b1*x(n-1);
end


%soundsc(y,Fs);
n = linspace(0,20,20);
figure(1);
clf; hold on;
stem(n,x,'ko');
stem(n,y,'ro');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('signal');
legend({'x[n]', 'y[n]'})
