load handel; %gong, chirp, train, splat, laughter
x = y;
%soundsc(x,Fs);
y = zeros(size(x));

a1 = -0.8;
N = length(x);
y(1) = x(1);

for n=2:N
    y(n) = x(n) - a1*y(n-1);
end


soundsc(y,Fs);

