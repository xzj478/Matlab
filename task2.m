%1st task
syms a b x;
solve(exp(b*x.^2-x) + a == 100,a);



% 2nd task
syms x;
y = x/(sqrt(x^2+1)*(2+x^2));
yi = int(y,x);
x = -20:0.01:20;
y_ltx = vectorize(y);
yi_ltx = vectorize(yi);
yn = eval(y_ltx);
yin = eval(yi_ltx);
plot(x,yn,x,yin);
y_latex = latex(y);
yi_latex = latex(yi);
h = legend(['$',y_latex,'$'],['$',yi_latex,'$']);
set(h,'Interpreter','latex','Fontsize',12);
% I've learned how to solve the equation and calculate derivative and
% integral of a function, put them on the graph finally.