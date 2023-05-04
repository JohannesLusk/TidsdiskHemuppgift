fs = 10e3;
t = -0.1:1/fs:0.1;

w = 40e-3;


y = [];
for i=0:5
    y = [y;tripuls(t,w)];
    t = t+1;
end


x = linspace(-2, 2, 1000);
plot(x,y(1),x,y(2),x,y(3),x,y(4),x,y(5),x,y(6))
ylim([-0.2 1.2])

