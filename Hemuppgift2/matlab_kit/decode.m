z=mkhwdata([030105;020922]);
%present_image(z)

[Z,nu]=tdftfast(z);

close all
%tiledlayout(2,1)


%dark character is in lowpass 0.22-
%Bright character is in highpass 0.8+
%last character is in bandpass [0.4,0.6]
%[b,a] = butter(9,0.82,'high'); %highpass
%[b,a] = butter(9,0.15); %lowpass, 
%[b,a] = butter(9,[0.01 0.9],'stop'); %bandstop
[b,a] = butter(9,[0.4, 0.6]); %bandpass

x = filter(b, a, z);
present_image(x)

