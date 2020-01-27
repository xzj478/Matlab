function Lissajous_fun(f1,f2)
% This script draw the Lissajous curve
% Call: Lissajous_fun(f1,f2)
t = 0:0.0001:1;
% f1 = 1; f2 = 10000;
x = cos(2*pi*f1*t);
y = sin(2*pi*f2*t);
plot(x,y)