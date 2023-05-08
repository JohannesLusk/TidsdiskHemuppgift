clear

z=mkhwdata([030105;020922]);
[Z,nu]=tdftfast(z);
subplot(2,2,1);
plot(nu, abs(Z)) %Plottar Z(v), abs behövs eftersom Z är ett komplext tal

[b,a] = butter(9,0.75,'high'); %högpassfilter

x = filter(b, a, z); %Filtrerar bort oönskade frekvenser
[X,nux]=tdftfast(x);
subplot(2,2,2);
plot(nux, angle(X)) %plottar fouriertransformerade signalen efter filtrering

x = x .* cos(2*pi*0.5*(0:length(z)-1))'; %Rekonstruktion med v_c = 0.5

subplot(2,2,3); %plottar fouriertransformerade signalen efter rekonstruktion
[X,nux]=tdftfast(x);
plot(nu,abs(X));

subplot(2,2,4)
present_image(x) 