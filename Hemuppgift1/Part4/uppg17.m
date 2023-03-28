load handel; %gong, chirp, train, splat, laughter
x = y;
%soundsc(x,Fs);

a1 = -0.9; a2 = 0.3; b0 = 0.1; b1 = 0.2; b2 = 0.1;

y = filter([b0 b1 b2],[1 a1 a2],x);

soundsc(y,Fs);