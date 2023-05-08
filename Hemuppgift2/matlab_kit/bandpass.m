clear

z=mkhwdata([030105;020922]);
[Z,nu]=tdftfast(z);
subplot(2,2,1);
plot(nu, abs(Z)) %Plottar Z(v), abs behövs eftersom Z är ett komplext tal

[b,a] = butter(4, [0.4, 0.6]); %bandpassfilter

y = filter(b, a, z); %Filtrerar bort oönskade frekvenser
[Y,nux]=tdftfast(y);
subplot(2,2,2);
plot(nux, abs(Y)) %Plottar fouriertransformerade signalen efter filtrering

y = y .* cos(2*pi*0.25*(0:length(z)-1))'; %Rekonstruktion med v_c = 0.25

subplot(2,2,3);
[Y2,nuy]=tdftfast(y);
plot(nuy,abs(Y2)); %Plottar fouriertransformerade signalen efter rekonstruktion
%Signalen visade sig ha fler oönskade frekvenser, de filtreras bort
[b2,a2] = butter(9, 0.3); %lågpassfilter
x = filter(b2, a2, y);
[X2,nux] = tdftfast(x);
%plot(nux, abs(X2))
subplot(2,2,4)
present_image(x)