% This script draw the Lissajous curve
t = 0:0.01:1;
f1 = 1;
f2 = 1;
x = cos(2*pi*f1*t);
y = sin(2*pi*f2*t);
plot(x,y)