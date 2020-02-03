% Processing the measurement data
% fitting the curve
% we've changed the voltage and measured the current
% we've put in matlab vectors
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7]*1e-3;
plot(Vm,Im,'o-')
% we try to fit 2nd order polynomial to the given data
% polyfit - polynomial fitting
% syntax: C = polyfit(x,y,N)
% N - polynomial order
C = polyfit(Vm,Im,2)

C =

    0.0002    0.0004    0.0015

V = -1:0.01:3.2;
% letš calculate poly. values
I = C(1)*V.^2 + C(2)*V + C(3);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

I = C(1)*V.^3 + C(2)*V.^2 + C(3)*V + C(4);
plot(Vm,Im,'o',V,I)
% we can use polyval function
% polyval - this function calculates polynomial value
% syntax : y = polyval(C,x);
I = polyval(C,V);
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

C = polyfit(Vm,Im,4)

C =

   -0.0001    0.0004   -0.0006    0.0000    0.0022

I = polyval(C,V);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,1)

C =

    0.0007    0.0017

I = polyval(C,V);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,5)
[Warning: Polynomial is not unique; degree >= number of data points.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m', 74)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m',74,0)">line 74</a>)] 

C =

    0.0000   -0.0001    0.0005   -0.0006         0    0.0022

I = polyval(C,V);
plot(Vm,Im,'o',V,I)
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;1.0]*1e-3;
{Dimensions of arrays being concatenated are not consistent.
} 
Im = [1.1 2.2 2.1 3.2 4.7; 1.0 2.1 2.3 3.1 4.5; 0.9 2.0 2.2 3.3 4.6; 1.0 2.2 2.3 3.2 4.6; 1.8 1.9 2.1*1e-3;

Im = [1.1 2.2 2.1 3.2 4.7;1.0 2.1 2.3 3.1 4.5; 0.9 2.0 2.2 3.3 4.6; 1.0 2.2 2.3 3.2 4.6; 1.8 1.9 2.1
 Im = [1.1 2.2 2.1 3.2 4.7;1.0 2.1 2.3 3.1 4.5; 0.9 2.0 2.2 3.3 4.6; 1.0 2.2 2.3 3.2 4.6; 1.8 1.9 2.1
    ↑
{Error: Incorrect use of '=' operator. To assign a value to a variable, use '='. To compare values for
equality, use '=='.
} 
Im = [1.1 2.2 2.1 3.2 4.7;1.0 2.1 2.3 3.1 4.5; 0.9 2.0 2.2 3.3 4.6; 1.0 2.2 2.3 3.2 4.6; 1.8 1.9 2.1 3.4 4.7];
figure,
plot(Vm,Im,'o-')
Im = [1.1 2.2 2.1 3.2 4.7;1.0 2.1 2.3 3.1 4.5; 0.9 2.0 2.2 3.3 4.6; 1.0 2.2 2.3 3.2 4.6; 0.8 1.9 2.1 3.4 4.7];
plot(Vm,Im,'o-')
plot(Vm,Im','o-')
plot(Vm,Im,'o-')
plot(Vm,Im','o-')
% first we calculate average values
sum([1 2 3 4 5])

ans =

    15

sum(Im)

ans =

    4.8000   10.4000   11.0000   16.2000   23.1000

Iaverage = sum(Im)/5

Iaverage =

    0.9600    2.0800    2.2000    3.2400    4.6200

Iaverage = mean(Im)

Iaverage =

    0.9600    2.0800    2.2000    3.2400    4.6200

Iaverage = mean(Im')

Iaverage =

    2.6600    2.6000    2.6000    2.6600    2.5800

% lets fit the poly.
Iaverage = mean(Im)

Iaverage =

    0.9600    2.0800    2.2000    3.2400    4.6200

C = polyfit(Vm,Iaverage,4);
V = min(Vm):0.01:max(Vm);
I = polyval(C,V);
plot(Vm,Im','o',Vm,Iaverage,'*',V,I)
% it'š useful to use function error bar
Istd = std(I);
Istd = std(Im);
errorbar(Vm, Iaverage, Istd)
errorbar(Vm, Iaverage, Istd, '.')
hold on
plot(V,I)
hold off
% Last topic
% How to get the data from the graph
ls
bilde1.png  bilde2.png	lab1_diary.m  lecture2_diary.m

A = imread('bilde1.png');
B = imread('bilde2.png');
% imread reads jpg, png into matrix
figure(1),image(A)
figure(2),image(B)
figure(2),image([500-800],[0 1],B)
figure(2),image([500 800],[0 1],B)
figure(2),image([500 800],[1 0],B)
figure(2),image([500 800],[0 1],B)
set(gca, 'YDir', 'normal')
figure(2),image([500 800],[1 0],B)
set(gca, 'YDir', 'normal')
figure(2),image([500 800],[1 0],B)
set(gca, 'YDir', 'normal')
figure(1),image(A)
[x,y] = ginput(1)

x =

  611.8387


y =

    0.7448

% to sample graph
[x,y] = ginput(10)

x =

  584.7018
  591.9100
  611.8387
  620.7430
  646.6079
  653.3921
  659.3283
  671.6247
  680.5290
  691.9774


y =

    0.1268
    0.1805
    0.5358
    0.7777
    0.7926
    0.6373
    0.4552
    0.2402
    0.1507
    0.0790

hold on
plot(x,y,'o')
diary off
