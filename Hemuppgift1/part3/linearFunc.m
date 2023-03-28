function y = linearFunc
x = zeros(1,20); x(1) = 1; v = zeros(1,20);
y = zeros(1,20);


a1 = -0.8;
N = length(x);
v(1) = x(1);% First sample, assuming x(0) = 0
for n=2:N % remaining samples
    v(n) = x(n) - a1*v(n-1);
end

b0 = 0.5; b1 = 0.5;
K = length(v);
y(1) = b0*v(1); % First sample, assuming x(0) = 0
for k=2:K % Remaining samples
    y(k) = b0*v(k) + b1*v(k-1);
end
end