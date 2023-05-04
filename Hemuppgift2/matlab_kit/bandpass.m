clear

z=mkhwdata([030105;020922]);
[Z,nu]=tdftfast(z);
subplot(2,2,1);
plot(nu, abs(Z)) %Plottar Z(v), abs behövs eftersom Z är ett komplext tal

[b,a] = butter(9, [0.3, 0.7]); %bandpassfilter

y = filter(b, a, z); %Filtrerar bort oönskade frekvenser
[Y,nux]=tdftfast(y);
subplot(2,2,2);
plot(nux, abs(Y)) %Plottar fouriertransformerade signalen efter filtrering

for i=1:size(y) %Rekonstruktion
    y(i) = sin(2*pi*0.25*i) * y(i); %V_C = 0.25
end
subplot(2,2,3);
[Y2,nux]=tdftfast(y);
plot(nu,abs(Y2)); %Plottar fouriertransformerade signalen efter rekonstruktion

%Signalen visade sig ha fler oönskade frekvenser, de filtreras bort
[b2,a2] = butter(9, 0.2); %lågpassfilter
x = filter(b2, a2, y);

subplot(2,2,4)
present_image(x)