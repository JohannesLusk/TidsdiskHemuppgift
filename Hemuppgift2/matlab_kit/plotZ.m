z=mkhwdata([030105;020922]);
%present_image(z)

[Z,nu]=tdftfast(z);
plot(nu, abs(Z)) %abs behövs eftersom transformen är ett komplext värde
