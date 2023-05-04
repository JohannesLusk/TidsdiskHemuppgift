clear

z=mkhwdata([030105;020922]);
[Z,nu]=tdftfast(z);
subplot(2,2,1);
plot(nu, abs(Z)) %Plottar Z(v), abs behövs eftersom Z är ett komplext tal

[b,a] = butter(9,0.8,'high'); %högpassfilter

x = filter(b, a, z); %Filtrerar bort oönskade frekvenser
[X,nux]=tdftfast(x);
subplot(2,2,2);
plot(nux, abs(X)) %plottar fouriertransformerade signalen efter filtrering

for i=1:size(x) %Rekonstruktion
    x(i) = cos(2*pi*0.5*i) * x(i); %V_C = 0.5
    %x(i) = (-1)^i * x(i) %Samma som ovanstående
end

subplot(2,2,3); %plottar fouriertransformerade signalen efter rekonstruktion
[X,nux]=tdftfast(x);
plot(nu,abs(X));

subplot(2,2,4)
present_image(-x) %Figuren visade sig ha inverterade färger, troligen pga
%fel i rekonstruktionen, löstes genom att multiplicera allt med -1