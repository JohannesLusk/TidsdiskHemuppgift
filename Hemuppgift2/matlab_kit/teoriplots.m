fs = 10e3;
t = -0.1:1/fs:0.1;

w = 40e-3;


y = [];
for i=0:5
    t = t+1;
end

y = triangularPulse([-1,1]);

plot([-2,2], y)


