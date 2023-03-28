function y = timevariantFunc(offset)
x = zeros(1,20); x(offset) = 1; u = zeros(1,20);
y = zeros(1,20);
b0 = 0.5; b1 = 0.5;
K = length(x);
u(1) = b0*x(1); % First sample, assuming x(0) = 0
for k=2:K % Remaining samples
    u(k) = b0*x(k) + b1*x(k-1);
end


a1 = -0.8;
N = length(u);
y(1) = x(1);% First sample, assuming x(0) = 0
for n=2:N % remaining samples
    y(n) = x(n) - a1*y(n-1);
end


end