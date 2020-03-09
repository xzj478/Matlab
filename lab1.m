%% 1st Laboratory
%% Processing measurement data

%%
% Name: Zijian Xie

%%
% This is the experiment data I've got from Resonance Amplifier

% Ub is the voltage of Base of BJT
Ub = [50.4 100.3 150.7 200 250.5 300.7 350 400 450 500 550 600 650 700 750 800 850 900 950 1000 1050 1080];
% Ic is the current flow through Collector of BJT
Ic = [0.027 0.106 0.279 0.515 0.794 1.093 1.4 1.732 2.06 2.388 2.735 3.07 3.408 3.751 4.1 4.44 4.79 5.14 5.488 5.834 6.195 6.437];
C = polyfit(Ub,Ic,3);
U = 50:0.01:1080;
I = polyval(C,U);
plot(U,I,Ub,Ic,'o');
xlabel('U,mV');
ylabel('I,mA');
title('U-I Curve');
%% Conclusion:
% I've learned how to sample the data and create the graph.
%%
% Useful functions:
%%
% polyfit()-get coefficients of polynomial approximation according to sample values and function order.
%%
% polyval()-get output value by calculating the Input value with coefficient C and polynomial.