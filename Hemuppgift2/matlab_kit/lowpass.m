clear

z=mkhwdata([030105;020922]);
[Z,nu]=tdftfast(z);
subplot(2,2,1);
plot(nu, abs(Z)) %plottar Z(v), abs behövs eftersom Z är ett komplext tal

[b,a] = butter(5, 0.13); %lågpassfilter

x = filter(b, a, z); %Filtrerar bort oönskade frekvenser
[X,nux]=tdftfast(x);
subplot(2,2,2);
plot(nux, abs(X)) %plottar signalen efter filtrering
%Eftersom denna figur har bärvågsfrekvens 0 (modulerats med vågen
%cos(2pi0n)) så behövs inga ytterliggare åtgärder

subplot(2,2,3)
present_image(x)