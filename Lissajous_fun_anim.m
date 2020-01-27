function Lissajous_fun_anim(f1,f2)
% This script animates the Lissajous curve
% Call: Lissajous_fun(f1,f2)
t = 0:0.0001:1;
% f1 = 1; f2 = 10000;
for i = 0:pi/100:10*pi
x = cos(2*pi*f1*t);
y = sin(2*pi*f2*t+i);
plot(x,y)
pause(0.01)
end