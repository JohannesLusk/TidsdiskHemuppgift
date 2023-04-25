load handel; %gong, chirp, train, splat, laughter
x = y;
%soundsc(x,Fs);
y = zeros(size(x));

a1 = 1.2;
N = length(x);
y(1) = x(1);

for n=2:N
    y(n) = x(n) - a1*y(n-1);
end


%sound(y,Fs);
n = linspace(0,N,N);
figure(1);
clf; hold on;
stem(n,x,'ko');
stem(n,y,'ro');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('signal');
legend({'x[n]', 'y[n]'})

