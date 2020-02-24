% polynomial interpolation
U = 0:0.01:2;
i0 = 1e-6;
a = 5;
I = i0*(exp(a*U)-1);
figure(1),plot(U,I)
% we don't know the expression
% but we have taken some experimental point
Udk = [1 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
hold on
plot(Udk,Idk,'o')
Udk = [2 1.85 1.48 1 0];
plot(Udk,Idk,'o')
figure(1),plot(U,I)
plot(Udk,Idk,'o')
figure(1),plot(U,I)
hold on
plot(Udk,Idk,'o')
figure(2), plot(Udk,Idk,'o-')
% How to plot a smooth line?
Udk

Udk =

    2.0000    1.8500    1.4800    1.0000         0

vander(Udk)

ans =

   16.0000    8.0000    4.0000    2.0000    1.0000
   11.7135    6.3316    3.4225    1.8500    1.0000
    4.7979    3.2418    2.1904    1.4800    1.0000
    1.0000    1.0000    1.0000    1.0000    1.0000
         0         0         0         0    1.0000

X = vander(Udk);
Idk

Idk =

    0.0212    0.0100    0.0017    0.0003         0

Y = Idk'

Y =

    0.0212
    0.0100
    0.0017
    0.0003
         0

C = X\Y

C =

    0.0330
   -0.1315
    0.1737
   -0.0749
         0

% Let'š put coeffs. values into poly.
UU = 0:0.01:2;
II = C(1)*UU.^4 + C(2)*UU.^3 + C(3)*UU.^2 + C(4)*UU + C(5);
figure(2), plot(Udk,Idk,'o',UU,II)
% result is not ideal
% we will try to decrease the order of poly.
% for poly interpolation its means that we reduce the number of measurement points
Udk(2) = [];
Idk(2) = [];
Udk

Udk =

    2.0000    1.4800    1.0000         0

Idk

Idk =

    0.0212    0.0017    0.0003         0

X = vander(Udk);
Y = Idk';
C = X\Y

C =

    0.0164
   -0.0389
    0.0228
         0

II = C(1)*UU.^3 + C(2)*UU.^2 + C(3)*UU + C(4);
figure(2)
hold on
plot(UU,II)
% to make this calculation during the lab
% we have used polyfit, and polyval function
C = polyfit(Udk,Idk,3);
II = polyval(C,UU);
plot(UU,II)
% poly. approximation
% approximation with least square method
% if we have number of points that is equal to N
% we can fit the poly. with order < (N-1)
syms C1 C2 xi yi z Di
z = C1*xi + C2;
Di = z - yi
 
Di =
 
C2 - yi + C1*xi
 
expand(Di^2)
 
ans =
 
C1^2*xi^2 + 2*C1*C2*xi - 2*C1*xi*yi + C2^2 - 2*C2*yi + yi^2
 
ex1 = diff(Di^2,C1)
 
ex1 =
 
2*xi*(C2 - yi + C1*xi)
 
ex2 = diff(Di^2,C2)
 
ex2 =
 
2*C2 - 2*yi + 2*C1*xi
 
term11 = subs(subs(ex1,xi,Udk(1)),yi,Idk(1))
 
term11 =
 
8*C1 + 4*C2 - 53/625
 
term12 = subs(subs(ex1,xi,Udk(2)),yi,Idk(2));
term13 = subs(subs(ex1,xi,Udk(3)),yi,Idk(3));
term14 = subs(subs(ex1,xi,Udk(4)),yi,Idk(4));
term15 = subs(subs(ex1,xi,Udk(5)),yi,Idk(5));
{Index exceeds array bounds.
} 
Udk = [2 1.85 1.48 1 0];
Idk = [21.2 10 1.7 0.3 0]*1e-3;
term11 = subs(subs(ex1,xi,Udk(1)),yi,Idk(1))
 
term11 =
 
8*C1 + 4*C2 - 53/625
 
term12 = subs(subs(ex1,xi,Udk(2)),yi,Idk(2));
term13 = subs(subs(ex1,xi,Udk(3)),yi,Idk(3));
term14 = subs(subs(ex1,xi,Udk(4)),yi,Idk(4));
term15 = subs(subs(ex1,xi,Udk(5)),yi,Idk(5));
term21 = subs(subs(ex2,xi,Udk(1)),yi,Idk(1))
 
term21 =
 
4*C1 + 2*C2 - 53/1250
 
term22 = subs(subs(ex2,xi,Udk(2)),yi,Idk(2));
term23 = subs(subs(ex2,xi,Udk(3)),yi,Idk(3));
term24 = subs(subs(ex2,xi,Udk(4)),yi,Idk(4));
term25 = subs(subs(ex2,xi,Udk(5)),yi,Idk(5));
term11 + term12 + term13 + term14 + term15
 
ans =
 
(106129*C1)/5000 + (633*C2)/50 - 15929/125000
 
term21 + term22 + term23 + term24 + term25
 
ans =
 
(633*C1)/50 + 10*C2 - 83/1250
 
eq1 = term11 + term12 + term13 + term14 + term15;
eq2 = term21 + term22 + term23 + term24 + term25;
C1C2 = solve(eq1==0,eq2==0)

C1C2 = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    C1: [1×1 sym]
    C2: [1×1 sym]

C1C2.C1
 
ans =
 
13553/1624450
 
C1C2.C2
 
ans =
 
-25487/6497800
 
ZZ = double(C1C2.C1)*UU + double(C1C2.C2);
figure(3),plot(Udk,Idk,'o',UU,ZZ)
% we can fit the polynomial with order < (N-1)
C = polyfit(Udk,Idk,1);
ZZ = polyval(C,UU);
figure(3),plot(Udk,Idk,'o',UU,ZZ)
% conditional operator
a = input('enter integer')
enter integer8

a =

     8

if (rem(a,2) == 1)
display('this is odd number')
else
disp('this is even number')
end
this is even number
% Loop operators
% while
a = 10;
while(a>0)
disp(['Hello student a=', num2str(2)]);
a = a - 1;
end
Hello student a=2
Hello student a=2
Hello student a=2
Hello student a=2
Hello student a=2
Hello student a=2
Hello student a=2
Hello student a=2
Hello student a=2
Hello student a=2
while(a>0)
disp(['Hello student a=', num2str(a)]);
a = a - 1;
end


end
 end
 ↑
{Error: Illegal use of reserved keyword "end".
} 

a = 10;
while(a>0)
disp(['Hello student a=', num2str(a)]);
a = a - 1;
end
Hello student a=10
Hello student a=9
Hello student a=8
Hello student a=7
Hello student a=6
Hello student a=5
Hello student a=4
Hello student a=3
Hello student a=2
Hello student a=1
% for
for i = 1:10
fprintf('Hello i = %g \n', i);
end
Hello i = 1 
Hello i = 2 
Hello i = 3 
Hello i = 4 
Hello i = 5 
Hello i = 6 
Hello i = 7 
Hello i = 8 
Hello i = 9 
Hello i = 10 
A = [3 5 7];
for i = A
fprintf('Hello i = %g \n', i);
end
Hello i = 3 
Hello i = 5 
Hello i = 7 
tic
toc
Elapsed time is 2.152124 seconds.
parfor i = 1:10
disp(i)
end
Starting parallel pool (parpool) using the 'local' profile ...
connected to 2 workers.
     1

     6

     5

     4

     3

     2

     8

     7

     9

    10

tic,for i = 1:10, pause(1), end, toc
Elapsed time is 10.003896 seconds.
tic,parfor i = 1:10, pause(1), end, toc
Elapsed time is 5.114453 seconds.
diary off
