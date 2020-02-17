% Symbolic math
% Example
syms a11 a12 a21 a22 b11 b12 b21 b22
A = [a11 a12; a21 a22];
B = [b11 b12; b21 b22];
A
 
A =
 
[ a11, a12]
[ a21, a22]
 
B
 
B =
 
[ b11, b12]
[ b21, b22]
 
C = A*B
 
C =
 
[ a11*b11 + a12*b21, a11*b12 + a12*b22]
[ a21*b11 + a22*b21, a21*b12 + a22*b22]
 
D = A.*B
 
D =
 
[ a11*b11, a12*b12]
[ a21*b21, a22*b22]
 
% How to define a symbolic variable
% 1.
x = sym('x');
y = sym('y');
z = x^2;
sqrt(x^2)
 
ans =
 
(x^2)^(1/2)
 
% Lets redefine x, now x > 0
x = sym('x','positive');
z = x^2;
sqrt(z)
 
ans =
 
x
 
A'
 
ans =
 
[ conj(a11), conj(a21)]
[ conj(a12), conj(a22)]
 
% if we limit matrix elements to only real
syms a11 a12 a21 a22 real
A = [a11 a12; a21 a22];
A'
 
ans =
 
[ a11, a21]
[ a12, a22]
 
% how to define a symbolic variable 3
A = sym('a', [2, 3])
 
A =
 
[ a1_1, a1_2, a1_3]
[ a2_1, a2_2, a2_3]
 
% how to get a derivative
syms x
diff(x^2)
 
ans =
 
2*x
 
% how to get a partial derivative
syms x y
z = 5*x^5 + y^4;
diff(z,x)
 
ans =
 
25*x^4
 
diff(z,y)
 
ans =
 
4*y^3
 
% how to find integral
syms x
int(x^2,x)
 
ans =
 
x^3/3
 
syms x y
int(x^2,y)
 
ans =
 
x^2*y
 
% how to find definite integral
int(x,x,0,3)
 
ans =
 
9/2
 
% the answer is not a double class
double(int(x,x,0,3))

ans =

    4.5000

int(x^2,-3,3)
 
ans =
 
18
 
% how to calculate limits
lim(1/(x-1),x,1,'left')
{Undefined function or variable 'lim'.
} 
limit(1/(x-1),x,1,'left')
 
ans =
 
-Inf
 
limit(1/(x-1),x,1,'right')
 
ans =
 
Inf
 
% how to solve equation
syms x
solve(x^2 - 3*x + 2 == 0, x)
 
ans =
 
 1
 2
 
% how to solve equation system
syms x y z
solve(x+y+z==6,x-y+z==2,x+y-z==0,x,y,z)

ans = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

solve(x+y+z==6,x-y+z==2,x+y-z==0)

ans = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

xyz = solve(x+y+z==6,x-y+z==2,x+y-z==0)

xyz = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

xyz.x
 
ans =
 
1
 
y
 
y =
 
y
 
xyz.y
 
ans =
 
2
 
xyz.z
 
ans =
 
3
 
% symbolic constant
% vpa
a = vpa(pi)
 
a =
 
3.1415926535897932384626433832795
 
b = vpa(sqrt(2))
 
b =
 
1.4142135623730950488016887242097
 
c = a + b
 
c =
 
4.5558062159628882872643321074892
 
% we can change number of digits by using function "digits()"
digits(50)
a = vpa(pi)
 
a =
 
3.1415926535897932384626433832795028841971693993751
 
b = vpa(2)
 
b =
 
2.0
 
c = a + b
 
c =
 
5.1415926535897932384626433832795028841971693993751
 
b = vpa(sqrt(2))
 
b =
 
1.4142135623730950488016887242096980785696718753769
 
digits(5)
a = vpa(pi)
 
a =
 
3.1416
 
% how to display a "pretty" formula
syms x
y = (x-1)*(x-2)/((x-3)^3*(x-4))
 
y =
 
((x - 1)*(x - 2))/((x - 3)^3*(x - 4))
 
pretty(y)
 (x - 1) (x - 2)
----------------
       3
(x - 3)  (x - 4)

% how to display a "pretty" formula 2
syms x
y = (x-1)*(x-2)/((x-3)^3*(x-4));
y_ltx = latex(y)

y_ltx =

    '\frac{\left(x-1\right)\,\left(x-2\right)}{{\left(x-3\right)}^3\,\left(x-4\right)}'

% lets add $
y_ltx2 = ['$',y_ltx,'$']

y_ltx2 =

    '$\frac{\left(x-1\right)\,\left(x-2\right)}{{\left(x-3\right)}^3\,\left(x-4\right)}$'

text(1,1,y_ltx2,'Interpreter','Latex')
text(0.5,0.5,y_ltx2,'Interpreter','Latex')
text(0.5,0.5,y_ltx2,'Interpreter','Latex','Fontsize',48)
text(0,0,y_ltx2,'Interpreter','Latex','Fontsize',48)
text(0,0.5,y_ltx2,'Interpreter','Latex','Fontsize',48)
text(0,0.5,y_ltx2,'Interpreter','Latex','Fontsize',48,'BackgroundColor','black')
text(0,0.5,y_ltx2,'Interpreter','Latex','Fontsize',48)
% how to simplify result
syms x
y = (x-1)*(x-2)/((x-3)^3*(x-4));
yd = diff(y)
 
yd =
 
(x - 1)/((x - 3)^3*(x - 4)) + (x - 2)/((x - 3)^3*(x - 4)) - ((x - 1)*(x - 2))/((x - 3)^3*(x - 4)^2) - (3*(x - 1)*(x - 2))/((x - 3)^4*(x - 4))
 
simplify(yd)
 
ans =
 
-(2*(x^3 - 5*x^2 + 4*x + 3))/((x - 3)^4*(x - 4)^2)
 
% other way to simplify
syms x
y = (x-1)/(x-2)
 
y =
 
(x - 1)/(x - 2)
 
expand(y)
 
ans =
 
x/(x - 2) - 1/(x - 2)
 
y = (x-1)*(x-2)
 
y =
 
(x - 1)*(x - 2)
 
expand(y)
 
ans =
 
x^2 - 3*x + 2
 
factor(y2)
{Undefined function or variable 'y2'.
} 
y2 = expand(y)
 
y2 =
 
x^2 - 3*x + 2
 
factor(y2)
 
ans =
 
[ x - 1, x - 2]
 
horner(y)
 
ans =
 
x*(x - 3) + 2
 
% how to show the result graphically
syms x
y = x^2;
ezplot(y)
% how to calculate the result(this will be 2nd task of lab2)
% 1. in it given y = (x-1)*(x-2)/(sqrt(x-3)*(x-4))
% task is find derivative and plot y and y' on the graph by using plot function and then add the legend by using latex generator
% 2.
syms x
y = (x-1)*(x-2)/(sqrt(x-3)*(x-4));
% 3.
% take the derivative
yd = diff(y)
 
yd =
 
(x - 1)/((x - 3)^(1/2)*(x - 4)) + (x - 2)/((x - 3)^(1/2)*(x - 4)) - ((x - 1)*(x - 2))/((x - 3)^(1/2)*(x - 4)^2) - ((x - 1)*(x - 2))/(2*(x - 3)^(3/2)*(x - 4))
 
yd = simplify(diff(y))
 
yd =
 
(x^3 - 15*x^2 + 54*x - 52)/(2*(x - 3)^(3/2)*(x - 4)^2)
 
% 4. define x as numerical vector
x = -4:0.01:0;
% 5. vectorization
% we will put dot before( */ ^)
y_ltx = vectorize(y)

y_ltx =

    '((x - 1).*(x - 2))./((x - 3).^(1./2).*(x - 4))'

yd_ltx = vectorize(yd)

yd_ltx =

    '(54.*x - 15.*x.^2 + x.^3 - 52)./(2.*(x - 3).^(3./2).*(x - 4).^2)'

% 6. eval - interpreter function
yn = eval(y_ltx);
ydn = eval(yd_ltx)

ydn =

  Columns 1 through 6

   0.0000 - 0.2413i   0.0000 - 0.2415i   0.0000 - 0.2417i   0.0000 - 0.2418i   0.0000 - 0.2420i   0.0000 - 0.2422i

  Columns 7 through 12

   0.0000 - 0.2424i   0.0000 - 0.2426i   0.0000 - 0.2428i   0.0000 - 0.2430i   0.0000 - 0.2431i   0.0000 - 0.2433i

  Columns 13 through 18

   0.0000 - 0.2435i   0.0000 - 0.2437i   0.0000 - 0.2439i   0.0000 - 0.2441i   0.0000 - 0.2443i   0.0000 - 0.2445i

  Columns 19 through 24

   0.0000 - 0.2446i   0.0000 - 0.2448i   0.0000 - 0.2450i   0.0000 - 0.2452i   0.0000 - 0.2454i   0.0000 - 0.2456i

  Columns 25 through 30

   0.0000 - 0.2458i   0.0000 - 0.2460i   0.0000 - 0.2462i   0.0000 - 0.2464i   0.0000 - 0.2465i   0.0000 - 0.2467i

  Columns 31 through 36

   0.0000 - 0.2469i   0.0000 - 0.2471i   0.0000 - 0.2473i   0.0000 - 0.2475i   0.0000 - 0.2477i   0.0000 - 0.2479i

  Columns 37 through 42

   0.0000 - 0.2481i   0.0000 - 0.2483i   0.0000 - 0.2485i   0.0000 - 0.2487i   0.0000 - 0.2489i   0.0000 - 0.2491i

  Columns 43 through 48

   0.0000 - 0.2493i   0.0000 - 0.2495i   0.0000 - 0.2496i   0.0000 - 0.2498i   0.0000 - 0.2500i   0.0000 - 0.2502i

  Columns 49 through 54

   0.0000 - 0.2504i   0.0000 - 0.2506i   0.0000 - 0.2508i   0.0000 - 0.2510i   0.0000 - 0.2512i   0.0000 - 0.2514i

  Columns 55 through 60

   0.0000 - 0.2516i   0.0000 - 0.2518i   0.0000 - 0.2520i   0.0000 - 0.2522i   0.0000 - 0.2524i   0.0000 - 0.2526i

  Columns 61 through 66

   0.0000 - 0.2528i   0.0000 - 0.2530i   0.0000 - 0.2532i   0.0000 - 0.2534i   0.0000 - 0.2536i   0.0000 - 0.2538i

  Columns 67 through 72

   0.0000 - 0.2540i   0.0000 - 0.2542i   0.0000 - 0.2544i   0.0000 - 0.2546i   0.0000 - 0.2548i   0.0000 - 0.2550i

  Columns 73 through 78

   0.0000 - 0.2552i   0.0000 - 0.2554i   0.0000 - 0.2557i   0.0000 - 0.2559i   0.0000 - 0.2561i   0.0000 - 0.2563i

  Columns 79 through 84

   0.0000 - 0.2565i   0.0000 - 0.2567i   0.0000 - 0.2569i   0.0000 - 0.2571i   0.0000 - 0.2573i   0.0000 - 0.2575i

  Columns 85 through 90

   0.0000 - 0.2577i   0.0000 - 0.2579i   0.0000 - 0.2581i   0.0000 - 0.2583i   0.0000 - 0.2585i   0.0000 - 0.2587i

  Columns 91 through 96

   0.0000 - 0.2590i   0.0000 - 0.2592i   0.0000 - 0.2594i   0.0000 - 0.2596i   0.0000 - 0.2598i   0.0000 - 0.2600i

  Columns 97 through 102

   0.0000 - 0.2602i   0.0000 - 0.2604i   0.0000 - 0.2606i   0.0000 - 0.2608i   0.0000 - 0.2611i   0.0000 - 0.2613i

  Columns 103 through 108

   0.0000 - 0.2615i   0.0000 - 0.2617i   0.0000 - 0.2619i   0.0000 - 0.2621i   0.0000 - 0.2623i   0.0000 - 0.2625i

  Columns 109 through 114

   0.0000 - 0.2628i   0.0000 - 0.2630i   0.0000 - 0.2632i   0.0000 - 0.2634i   0.0000 - 0.2636i   0.0000 - 0.2638i

  Columns 115 through 120

   0.0000 - 0.2640i   0.0000 - 0.2643i   0.0000 - 0.2645i   0.0000 - 0.2647i   0.0000 - 0.2649i   0.0000 - 0.2651i

  Columns 121 through 126

   0.0000 - 0.2653i   0.0000 - 0.2655i   0.0000 - 0.2658i   0.0000 - 0.2660i   0.0000 - 0.2662i   0.0000 - 0.2664i

  Columns 127 through 132

   0.0000 - 0.2666i   0.0000 - 0.2669i   0.0000 - 0.2671i   0.0000 - 0.2673i   0.0000 - 0.2675i   0.0000 - 0.2677i

  Columns 133 through 138

   0.0000 - 0.2679i   0.0000 - 0.2682i   0.0000 - 0.2684i   0.0000 - 0.2686i   0.0000 - 0.2688i   0.0000 - 0.2690i

  Columns 139 through 144

   0.0000 - 0.2693i   0.0000 - 0.2695i   0.0000 - 0.2697i   0.0000 - 0.2699i   0.0000 - 0.2701i   0.0000 - 0.2704i

  Columns 145 through 150

   0.0000 - 0.2706i   0.0000 - 0.2708i   0.0000 - 0.2710i   0.0000 - 0.2713i   0.0000 - 0.2715i   0.0000 - 0.2717i

  Columns 151 through 156

   0.0000 - 0.2719i   0.0000 - 0.2721i   0.0000 - 0.2724i   0.0000 - 0.2726i   0.0000 - 0.2728i   0.0000 - 0.2730i

  Columns 157 through 162

   0.0000 - 0.2733i   0.0000 - 0.2735i   0.0000 - 0.2737i   0.0000 - 0.2739i   0.0000 - 0.2742i   0.0000 - 0.2744i

  Columns 163 through 168

   0.0000 - 0.2746i   0.0000 - 0.2748i   0.0000 - 0.2751i   0.0000 - 0.2753i   0.0000 - 0.2755i   0.0000 - 0.2757i

  Columns 169 through 174

   0.0000 - 0.2760i   0.0000 - 0.2762i   0.0000 - 0.2764i   0.0000 - 0.2766i   0.0000 - 0.2769i   0.0000 - 0.2771i

  Columns 175 through 180

   0.0000 - 0.2773i   0.0000 - 0.2775i   0.0000 - 0.2778i   0.0000 - 0.2780i   0.0000 - 0.2782i   0.0000 - 0.2784i

  Columns 181 through 186

   0.0000 - 0.2787i   0.0000 - 0.2789i   0.0000 - 0.2791i   0.0000 - 0.2794i   0.0000 - 0.2796i   0.0000 - 0.2798i

  Columns 187 through 192

   0.0000 - 0.2800i   0.0000 - 0.2803i   0.0000 - 0.2805i   0.0000 - 0.2807i   0.0000 - 0.2810i   0.0000 - 0.2812i

  Columns 193 through 198

   0.0000 - 0.2814i   0.0000 - 0.2816i   0.0000 - 0.2819i   0.0000 - 0.2821i   0.0000 - 0.2823i   0.0000 - 0.2825i

  Columns 199 through 204

   0.0000 - 0.2828i   0.0000 - 0.2830i   0.0000 - 0.2832i   0.0000 - 0.2835i   0.0000 - 0.2837i   0.0000 - 0.2839i

  Columns 205 through 210

   0.0000 - 0.2841i   0.0000 - 0.2844i   0.0000 - 0.2846i   0.0000 - 0.2848i   0.0000 - 0.2851i   0.0000 - 0.2853i

  Columns 211 through 216

   0.0000 - 0.2855i   0.0000 - 0.2858i   0.0000 - 0.2860i   0.0000 - 0.2862i   0.0000 - 0.2864i   0.0000 - 0.2867i

  Columns 217 through 222

   0.0000 - 0.2869i   0.0000 - 0.2871i   0.0000 - 0.2873i   0.0000 - 0.2876i   0.0000 - 0.2878i   0.0000 - 0.2880i

  Columns 223 through 228

   0.0000 - 0.2883i   0.0000 - 0.2885i   0.0000 - 0.2887i   0.0000 - 0.2889i   0.0000 - 0.2892i   0.0000 - 0.2894i

  Columns 229 through 234

   0.0000 - 0.2896i   0.0000 - 0.2899i   0.0000 - 0.2901i   0.0000 - 0.2903i   0.0000 - 0.2905i   0.0000 - 0.2908i

  Columns 235 through 240

   0.0000 - 0.2910i   0.0000 - 0.2912i   0.0000 - 0.2914i   0.0000 - 0.2917i   0.0000 - 0.2919i   0.0000 - 0.2921i

  Columns 241 through 246

   0.0000 - 0.2923i   0.0000 - 0.2926i   0.0000 - 0.2928i   0.0000 - 0.2930i   0.0000 - 0.2932i   0.0000 - 0.2935i

  Columns 247 through 252

   0.0000 - 0.2937i   0.0000 - 0.2939i   0.0000 - 0.2941i   0.0000 - 0.2944i   0.0000 - 0.2946i   0.0000 - 0.2948i

  Columns 253 through 258

   0.0000 - 0.2950i   0.0000 - 0.2952i   0.0000 - 0.2955i   0.0000 - 0.2957i   0.0000 - 0.2959i   0.0000 - 0.2961i

  Columns 259 through 264

   0.0000 - 0.2963i   0.0000 - 0.2966i   0.0000 - 0.2968i   0.0000 - 0.2970i   0.0000 - 0.2972i   0.0000 - 0.2974i

  Columns 265 through 270

   0.0000 - 0.2976i   0.0000 - 0.2979i   0.0000 - 0.2981i   0.0000 - 0.2983i   0.0000 - 0.2985i   0.0000 - 0.2987i

  Columns 271 through 276

   0.0000 - 0.2989i   0.0000 - 0.2991i   0.0000 - 0.2994i   0.0000 - 0.2996i   0.0000 - 0.2998i   0.0000 - 0.3000i

  Columns 277 through 282

   0.0000 - 0.3002i   0.0000 - 0.3004i   0.0000 - 0.3006i   0.0000 - 0.3008i   0.0000 - 0.3010i   0.0000 - 0.3012i

  Columns 283 through 288

   0.0000 - 0.3014i   0.0000 - 0.3016i   0.0000 - 0.3019i   0.0000 - 0.3021i   0.0000 - 0.3023i   0.0000 - 0.3025i

  Columns 289 through 294

   0.0000 - 0.3027i   0.0000 - 0.3029i   0.0000 - 0.3031i   0.0000 - 0.3033i   0.0000 - 0.3035i   0.0000 - 0.3037i

  Columns 295 through 300

   0.0000 - 0.3038i   0.0000 - 0.3040i   0.0000 - 0.3042i   0.0000 - 0.3044i   0.0000 - 0.3046i   0.0000 - 0.3048i

  Columns 301 through 306

   0.0000 - 0.3050i   0.0000 - 0.3052i   0.0000 - 0.3054i   0.0000 - 0.3056i   0.0000 - 0.3057i   0.0000 - 0.3059i

  Columns 307 through 312

   0.0000 - 0.3061i   0.0000 - 0.3063i   0.0000 - 0.3065i   0.0000 - 0.3067i   0.0000 - 0.3068i   0.0000 - 0.3070i

  Columns 313 through 318

   0.0000 - 0.3072i   0.0000 - 0.3074i   0.0000 - 0.3075i   0.0000 - 0.3077i   0.0000 - 0.3079i   0.0000 - 0.3080i

  Columns 319 through 324

   0.0000 - 0.3082i   0.0000 - 0.3084i   0.0000 - 0.3085i   0.0000 - 0.3087i   0.0000 - 0.3088i   0.0000 - 0.3090i

  Columns 325 through 330

   0.0000 - 0.3092i   0.0000 - 0.3093i   0.0000 - 0.3095i   0.0000 - 0.3096i   0.0000 - 0.3098i   0.0000 - 0.3099i

  Columns 331 through 336

   0.0000 - 0.3101i   0.0000 - 0.3102i   0.0000 - 0.3103i   0.0000 - 0.3105i   0.0000 - 0.3106i   0.0000 - 0.3108i

  Columns 337 through 342

   0.0000 - 0.3109i   0.0000 - 0.3110i   0.0000 - 0.3112i   0.0000 - 0.3113i   0.0000 - 0.3114i   0.0000 - 0.3115i

  Columns 343 through 348

   0.0000 - 0.3116i   0.0000 - 0.3118i   0.0000 - 0.3119i   0.0000 - 0.3120i   0.0000 - 0.3121i   0.0000 - 0.3122i

  Columns 349 through 354

   0.0000 - 0.3123i   0.0000 - 0.3124i   0.0000 - 0.3125i   0.0000 - 0.3126i   0.0000 - 0.3127i   0.0000 - 0.3128i

  Columns 355 through 360

   0.0000 - 0.3129i   0.0000 - 0.3130i   0.0000 - 0.3130i   0.0000 - 0.3131i   0.0000 - 0.3132i   0.0000 - 0.3133i

  Columns 361 through 366

   0.0000 - 0.3133i   0.0000 - 0.3134i   0.0000 - 0.3135i   0.0000 - 0.3135i   0.0000 - 0.3136i   0.0000 - 0.3136i

  Columns 367 through 372

   0.0000 - 0.3137i   0.0000 - 0.3137i   0.0000 - 0.3138i   0.0000 - 0.3138i   0.0000 - 0.3139i   0.0000 - 0.3139i

  Columns 373 through 378

   0.0000 - 0.3139i   0.0000 - 0.3139i   0.0000 - 0.3140i   0.0000 - 0.3140i   0.0000 - 0.3140i   0.0000 - 0.3140i

  Columns 379 through 384

   0.0000 - 0.3140i   0.0000 - 0.3140i   0.0000 - 0.3140i   0.0000 - 0.3140i   0.0000 - 0.3139i   0.0000 - 0.3139i

  Columns 385 through 390

   0.0000 - 0.3139i   0.0000 - 0.3139i   0.0000 - 0.3138i   0.0000 - 0.3138i   0.0000 - 0.3137i   0.0000 - 0.3137i

  Columns 391 through 396

   0.0000 - 0.3136i   0.0000 - 0.3136i   0.0000 - 0.3135i   0.0000 - 0.3134i   0.0000 - 0.3133i   0.0000 - 0.3133i

  Columns 397 through 401

   0.0000 - 0.3132i   0.0000 - 0.3131i   0.0000 - 0.3130i   0.0000 - 0.3128i   0.0000 - 0.3127i

ydn = eval(yd_ltx);
% 7. lets put the result on the graph
plot(x,yn,x,ydn)
[Warning: Imaginary parts of complex X and/or Y arguments ignored] 
% 8. lets annotate the graph
y_latex = latex(y);
yd_latex = latex(yd);
h = legend(['$',y_latex,'$'],['$',yd_latex,'$']);
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 
set(h,'Interpreter','latex')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('matlab.graphics.illustration.Legend/set')" style="font-weight:bold">matlab.graphics.illustration.Legend/set</a>
Invalid or deleted object.
} 
h = legend(['$',y_latex,'$'],['$',yd_latex,'$']);
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 
set(h,'Interpreter','latex')
syms b, a, x
 
a =
 
3.1416
 

x =

  Columns 1 through 12

   -4.0000   -3.9900   -3.9800   -3.9700   -3.9600   -3.9500   -3.9400   -3.9300   -3.9200   -3.9100   -3.9000   -3.8900

  Columns 13 through 24

   -3.8800   -3.8700   -3.8600   -3.8500   -3.8400   -3.8300   -3.8200   -3.8100   -3.8000   -3.7900   -3.7800   -3.7700

  Columns 25 through 36

   -3.7600   -3.7500   -3.7400   -3.7300   -3.7200   -3.7100   -3.7000   -3.6900   -3.6800   -3.6700   -3.6600   -3.6500

  Columns 37 through 48

   -3.6400   -3.6300   -3.6200   -3.6100   -3.6000   -3.5900   -3.5800   -3.5700   -3.5600   -3.5500   -3.5400   -3.5300

  Columns 49 through 60

   -3.5200   -3.5100   -3.5000   -3.4900   -3.4800   -3.4700   -3.4600   -3.4500   -3.4400   -3.4300   -3.4200   -3.4100

  Columns 61 through 72

   -3.4000   -3.3900   -3.3800   -3.3700   -3.3600   -3.3500   -3.3400   -3.3300   -3.3200   -3.3100   -3.3000   -3.2900

  Columns 73 through 84

   -3.2800   -3.2700   -3.2600   -3.2500   -3.2400   -3.2300   -3.2200   -3.2100   -3.2000   -3.1900   -3.1800   -3.1700

  Columns 85 through 96

   -3.1600   -3.1500   -3.1400   -3.1300   -3.1200   -3.1100   -3.1000   -3.0900   -3.0800   -3.0700   -3.0600   -3.0500

  Columns 97 through 108

   -3.0400   -3.0300   -3.0200   -3.0100   -3.0000   -2.9900   -2.9800   -2.9700   -2.9600   -2.9500   -2.9400   -2.9300

  Columns 109 through 120

   -2.9200   -2.9100   -2.9000   -2.8900   -2.8800   -2.8700   -2.8600   -2.8500   -2.8400   -2.8300   -2.8200   -2.8100

  Columns 121 through 132

   -2.8000   -2.7900   -2.7800   -2.7700   -2.7600   -2.7500   -2.7400   -2.7300   -2.7200   -2.7100   -2.7000   -2.6900

  Columns 133 through 144

   -2.6800   -2.6700   -2.6600   -2.6500   -2.6400   -2.6300   -2.6200   -2.6100   -2.6000   -2.5900   -2.5800   -2.5700

  Columns 145 through 156

   -2.5600   -2.5500   -2.5400   -2.5300   -2.5200   -2.5100   -2.5000   -2.4900   -2.4800   -2.4700   -2.4600   -2.4500

  Columns 157 through 168

   -2.4400   -2.4300   -2.4200   -2.4100   -2.4000   -2.3900   -2.3800   -2.3700   -2.3600   -2.3500   -2.3400   -2.3300

  Columns 169 through 180

   -2.3200   -2.3100   -2.3000   -2.2900   -2.2800   -2.2700   -2.2600   -2.2500   -2.2400   -2.2300   -2.2200   -2.2100

  Columns 181 through 192

   -2.2000   -2.1900   -2.1800   -2.1700   -2.1600   -2.1500   -2.1400   -2.1300   -2.1200   -2.1100   -2.1000   -2.0900

  Columns 193 through 204

   -2.0800   -2.0700   -2.0600   -2.0500   -2.0400   -2.0300   -2.0200   -2.0100   -2.0000   -1.9900   -1.9800   -1.9700

  Columns 205 through 216

   -1.9600   -1.9500   -1.9400   -1.9300   -1.9200   -1.9100   -1.9000   -1.8900   -1.8800   -1.8700   -1.8600   -1.8500

  Columns 217 through 228

   -1.8400   -1.8300   -1.8200   -1.8100   -1.8000   -1.7900   -1.7800   -1.7700   -1.7600   -1.7500   -1.7400   -1.7300

  Columns 229 through 240

   -1.7200   -1.7100   -1.7000   -1.6900   -1.6800   -1.6700   -1.6600   -1.6500   -1.6400   -1.6300   -1.6200   -1.6100

  Columns 241 through 252

   -1.6000   -1.5900   -1.5800   -1.5700   -1.5600   -1.5500   -1.5400   -1.5300   -1.5200   -1.5100   -1.5000   -1.4900

  Columns 253 through 264

   -1.4800   -1.4700   -1.4600   -1.4500   -1.4400   -1.4300   -1.4200   -1.4100   -1.4000   -1.3900   -1.3800   -1.3700

  Columns 265 through 276

   -1.3600   -1.3500   -1.3400   -1.3300   -1.3200   -1.3100   -1.3000   -1.2900   -1.2800   -1.2700   -1.2600   -1.2500

  Columns 277 through 288

   -1.2400   -1.2300   -1.2200   -1.2100   -1.2000   -1.1900   -1.1800   -1.1700   -1.1600   -1.1500   -1.1400   -1.1300

  Columns 289 through 300

   -1.1200   -1.1100   -1.1000   -1.0900   -1.0800   -1.0700   -1.0600   -1.0500   -1.0400   -1.0300   -1.0200   -1.0100

  Columns 301 through 312

   -1.0000   -0.9900   -0.9800   -0.9700   -0.9600   -0.9500   -0.9400   -0.9300   -0.9200   -0.9100   -0.9000   -0.8900

  Columns 313 through 324

   -0.8800   -0.8700   -0.8600   -0.8500   -0.8400   -0.8300   -0.8200   -0.8100   -0.8000   -0.7900   -0.7800   -0.7700

  Columns 325 through 336

   -0.7600   -0.7500   -0.7400   -0.7300   -0.7200   -0.7100   -0.7000   -0.6900   -0.6800   -0.6700   -0.6600   -0.6500

  Columns 337 through 348

   -0.6400   -0.6300   -0.6200   -0.6100   -0.6000   -0.5900   -0.5800   -0.5700   -0.5600   -0.5500   -0.5400   -0.5300

  Columns 349 through 360

   -0.5200   -0.5100   -0.5000   -0.4900   -0.4800   -0.4700   -0.4600   -0.4500   -0.4400   -0.4300   -0.4200   -0.4100

  Columns 361 through 372

   -0.4000   -0.3900   -0.3800   -0.3700   -0.3600   -0.3500   -0.3400   -0.3300   -0.3200   -0.3100   -0.3000   -0.2900

  Columns 373 through 384

   -0.2800   -0.2700   -0.2600   -0.2500   -0.2400   -0.2300   -0.2200   -0.2100   -0.2000   -0.1900   -0.1800   -0.1700

  Columns 385 through 396

   -0.1600   -0.1500   -0.1400   -0.1300   -0.1200   -0.1100   -0.1000   -0.0900   -0.0800   -0.0700   -0.0600   -0.0500

  Columns 397 through 401

   -0.0400   -0.0300   -0.0200   -0.0100         0

solve(e^(b*x^2-x) + a == 100,x)
{Undefined function or variable 'e'.
} 
syms e
e = exp(1)

e =

    2.7183

solve(e^(b*x^2-x) + a == 100,x)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mpower')" style="font-weight:bold"> ^ </a>
Incorrect dimensions for raising a matrix to a power. Check that the matrix is square and the power is a scalar. To perform
elementwise matrix powers, use '.^'.
} 
solve(e.^(b*x.^2-x) + a == 100,x)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('sym.getEqnsVars>checkVariables', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@sym/getEqnsVars.m', 92)" style="font-weight:bold">sym.getEqnsVars>checkVariables</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@sym/getEqnsVars.m',92,0)">line 92</a>)
Second argument must be a vector of symbolic variables.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('sym.getEqnsVars', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@sym/getEqnsVars.m', 54)" style="font-weight:bold">sym.getEqnsVars</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@sym/getEqnsVars.m',54,0)">line 54</a>)
    checkVariables(vars);

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve>getEqns', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 429)" style="font-weight:bold">solve>getEqns</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',429,0)">line 429</a>)
[eqns, vars] = sym.getEqnsVars(argv{:});

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 226)" style="font-weight:bold">solve</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',226,0)">line 226</a>)
[eqns,vars,options] = getEqns(varargin{:});
} 
syms x
solve(e.^(b*x.^2-x) + a == 100,x)
[Warning: Solutions are parameterized by the symbols: k. To include parameters and conditions in the solution, specify the
'ReturnConditions' value as 'true'.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve>warnIfParams', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 475)" style="font-weight:bold">solve>warnIfParams</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',475,0)">line 475</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 357)" style="font-weight:bold">solve</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',357,0)">line 357</a>)] 
[Warning: Solutions are valid under the following conditions: ((18.293*b - b*k*25.133i + 1.0)^(1/2) - 1.0)/b < 0 & in(k,
'integer');
0 < ((18.293*b - b*k*25.133i + 1.0)^(1/2) + 1.0)/b & in(k, 'integer'). To include parameters and conditions in the solution,
specify the 'ReturnConditions' value as 'true'.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve>warnIfParams', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 482)" style="font-weight:bold">solve>warnIfParams</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',482,0)">line 482</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 357)" style="font-weight:bold">solve</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',357,0)">line 357</a>)] 
 
ans =
 
 -(0.5*((18.293*b - b*k*25.133i + 1.0)^(1/2) - 1.0))/b
  (0.5*((18.293*b - b*k*25.133i + 1.0)^(1/2) + 1.0))/b
 
e

e =

    2.7183

syms x
y = x/(sqrt(x^2+1)*(2+x^2))
 
y =
 
x/((x^2 + 1)^(1/2)*(x^2 + 2))
 
yi = int(y,x)
 
yi =
 
- (log(x - 2^(1/2)*1i)*1i)/2 - (log(x + 2^(1/2)*1i)*1i)/2 + (log(1 + (x^2 + 1)^(1/2)*1i - 2^(1/2)*x*1i)*1i)/2 + (log((x^2 + 1)^(1/2)*1i + 1 + 2^(1/2)*x*1i)*1i)/2
 
yi = simplify(yi)
 
yi =
 
- (log(x - 2^(1/2)*1i)*1i)/2 - (log(x + 2^(1/2)*1i)*1i)/2 + (log(1 + (x^2 + 1)^(1/2)*1i - 2^(1/2)*x*1i)*1i)/2 + (log((x^2 + 1)^(1/2)*1i + 1 + 2^(1/2)*x*1i)*1i)/2
 
x = -20:0.01:20

x =

  Columns 1 through 12

  -20.0000  -19.9900  -19.9800  -19.9700  -19.9600  -19.9500  -19.9400  -19.9300  -19.9200  -19.9100  -19.9000  -19.8900

  Columns 13 through 24

  -19.8800  -19.8700  -19.8600  -19.8500  -19.8400  -19.8300  -19.8200  -19.8100  -19.8000  -19.7900  -19.7800  -19.7700

  Columns 25 through 36

  -19.7600  -19.7500  -19.7400  -19.7300  -19.7200  -19.7100  -19.7000  -19.6900  -19.6800  -19.6700  -19.6600  -19.6500

  Columns 37 through 48

  -19.6400  -19.6300  -19.6200  -19.6100  -19.6000  -19.5900  -19.5800  -19.5700  -19.5600  -19.5500  -19.5400  -19.5300

  Columns 49 through 60

  -19.5200  -19.5100  -19.5000  -19.4900  -19.4800  -19.4700  -19.4600  -19.4500  -19.4400  -19.4300  -19.4200  -19.4100

  Columns 61 through 72

  -19.4000  -19.3900  -19.3800  -19.3700  -19.3600  -19.3500  -19.3400  -19.3300  -19.3200  -19.3100  -19.3000  -19.2900

  Columns 73 through 84

  -19.2800  -19.2700  -19.2600  -19.2500  -19.2400  -19.2300  -19.2200  -19.2100  -19.2000  -19.1900  -19.1800  -19.1700

  Columns 85 through 96

  -19.1600  -19.1500  -19.1400  -19.1300  -19.1200  -19.1100  -19.1000  -19.0900  -19.0800  -19.0700  -19.0600  -19.0500

  Columns 97 through 108

  -19.0400  -19.0300  -19.0200  -19.0100  -19.0000  -18.9900  -18.9800  -18.9700  -18.9600  -18.9500  -18.9400  -18.9300

  Columns 109 through 120

  -18.9200  -18.9100  -18.9000  -18.8900  -18.8800  -18.8700  -18.8600  -18.8500  -18.8400  -18.8300  -18.8200  -18.8100

  Columns 121 through 132

  -18.8000  -18.7900  -18.7800  -18.7700  -18.7600  -18.7500  -18.7400  -18.7300  -18.7200  -18.7100  -18.7000  -18.6900

  Columns 133 through 144

  -18.6800  -18.6700  -18.6600  -18.6500  -18.6400  -18.6300  -18.6200  -18.6100  -18.6000  -18.5900  -18.5800  -18.5700

  Columns 145 through 156

  -18.5600  -18.5500  -18.5400  -18.5300  -18.5200  -18.5100  -18.5000  -18.4900  -18.4800  -18.4700  -18.4600  -18.4500

  Columns 157 through 168

  -18.4400  -18.4300  -18.4200  -18.4100  -18.4000  -18.3900  -18.3800  -18.3700  -18.3600  -18.3500  -18.3400  -18.3300

  Columns 169 through 180

  -18.3200  -18.3100  -18.3000  -18.2900  -18.2800  -18.2700  -18.2600  -18.2500  -18.2400  -18.2300  -18.2200  -18.2100

  Columns 181 through 192

  -18.2000  -18.1900  -18.1800  -18.1700  -18.1600  -18.1500  -18.1400  -18.1300  -18.1200  -18.1100  -18.1000  -18.0900

  Columns 193 through 204

  -18.0800  -18.0700  -18.0600  -18.0500  -18.0400  -18.0300  -18.0200  -18.0100  -18.0000  -17.9900  -17.9800  -17.9700

  Columns 205 through 216

  -17.9600  -17.9500  -17.9400  -17.9300  -17.9200  -17.9100  -17.9000  -17.8900  -17.8800  -17.8700  -17.8600  -17.8500

  Columns 217 through 228

  -17.8400  -17.8300  -17.8200  -17.8100  -17.8000  -17.7900  -17.7800  -17.7700  -17.7600  -17.7500  -17.7400  -17.7300

  Columns 229 through 240

  -17.7200  -17.7100  -17.7000  -17.6900  -17.6800  -17.6700  -17.6600  -17.6500  -17.6400  -17.6300  -17.6200  -17.6100

  Columns 241 through 252

  -17.6000  -17.5900  -17.5800  -17.5700  -17.5600  -17.5500  -17.5400  -17.5300  -17.5200  -17.5100  -17.5000  -17.4900

  Columns 253 through 264

  -17.4800  -17.4700  -17.4600  -17.4500  -17.4400  -17.4300  -17.4200  -17.4100  -17.4000  -17.3900  -17.3800  -17.3700

  Columns 265 through 276

  -17.3600  -17.3500  -17.3400  -17.3300  -17.3200  -17.3100  -17.3000  -17.2900  -17.2800  -17.2700  -17.2600  -17.2500

  Columns 277 through 288

  -17.2400  -17.2300  -17.2200  -17.2100  -17.2000  -17.1900  -17.1800  -17.1700  -17.1600  -17.1500  -17.1400  -17.1300

  Columns 289 through 300

  -17.1200  -17.1100  -17.1000  -17.0900  -17.0800  -17.0700  -17.0600  -17.0500  -17.0400  -17.0300  -17.0200  -17.0100

  Columns 301 through 312

  -17.0000  -16.9900  -16.9800  -16.9700  -16.9600  -16.9500  -16.9400  -16.9300  -16.9200  -16.9100  -16.9000  -16.8900

  Columns 313 through 324

  -16.8800  -16.8700  -16.8600  -16.8500  -16.8400  -16.8300  -16.8200  -16.8100  -16.8000  -16.7900  -16.7800  -16.7700

  Columns 325 through 336

  -16.7600  -16.7500  -16.7400  -16.7300  -16.7200  -16.7100  -16.7000  -16.6900  -16.6800  -16.6700  -16.6600  -16.6500

  Columns 337 through 348

  -16.6400  -16.6300  -16.6200  -16.6100  -16.6000  -16.5900  -16.5800  -16.5700  -16.5600  -16.5500  -16.5400  -16.5300

  Columns 349 through 360

  -16.5200  -16.5100  -16.5000  -16.4900  -16.4800  -16.4700  -16.4600  -16.4500  -16.4400  -16.4300  -16.4200  -16.4100

  Columns 361 through 372

  -16.4000  -16.3900  -16.3800  -16.3700  -16.3600  -16.3500  -16.3400  -16.3300  -16.3200  -16.3100  -16.3000  -16.2900

  Columns 373 through 384

  -16.2800  -16.2700  -16.2600  -16.2500  -16.2400  -16.2300  -16.2200  -16.2100  -16.2000  -16.1900  -16.1800  -16.1700

  Columns 385 through 396

  -16.1600  -16.1500  -16.1400  -16.1300  -16.1200  -16.1100  -16.1000  -16.0900  -16.0800  -16.0700  -16.0600  -16.0500

  Columns 397 through 408

  -16.0400  -16.0300  -16.0200  -16.0100  -16.0000  -15.9900  -15.9800  -15.9700  -15.9600  -15.9500  -15.9400  -15.9300

  Columns 409 through 420

  -15.9200  -15.9100  -15.9000  -15.8900  -15.8800  -15.8700  -15.8600  -15.8500  -15.8400  -15.8300  -15.8200  -15.8100

  Columns 421 through 432

  -15.8000  -15.7900  -15.7800  -15.7700  -15.7600  -15.7500  -15.7400  -15.7300  -15.7200  -15.7100  -15.7000  -15.6900

  Columns 433 through 444

  -15.6800  -15.6700  -15.6600  -15.6500  -15.6400  -15.6300  -15.6200  -15.6100  -15.6000  -15.5900  -15.5800  -15.5700

  Columns 445 through 456

  -15.5600  -15.5500  -15.5400  -15.5300  -15.5200  -15.5100  -15.5000  -15.4900  -15.4800  -15.4700  -15.4600  -15.4500

  Columns 457 through 468

  -15.4400  -15.4300  -15.4200  -15.4100  -15.4000  -15.3900  -15.3800  -15.3700  -15.3600  -15.3500  -15.3400  -15.3300

  Columns 469 through 480

  -15.3200  -15.3100  -15.3000  -15.2900  -15.2800  -15.2700  -15.2600  -15.2500  -15.2400  -15.2300  -15.2200  -15.2100

  Columns 481 through 492

  -15.2000  -15.1900  -15.1800  -15.1700  -15.1600  -15.1500  -15.1400  -15.1300  -15.1200  -15.1100  -15.1000  -15.0900

  Columns 493 through 504

  -15.0800  -15.0700  -15.0600  -15.0500  -15.0400  -15.0300  -15.0200  -15.0100  -15.0000  -14.9900  -14.9800  -14.9700

  Columns 505 through 516

  -14.9600  -14.9500  -14.9400  -14.9300  -14.9200  -14.9100  -14.9000  -14.8900  -14.8800  -14.8700  -14.8600  -14.8500

  Columns 517 through 528

  -14.8400  -14.8300  -14.8200  -14.8100  -14.8000  -14.7900  -14.7800  -14.7700  -14.7600  -14.7500  -14.7400  -14.7300

  Columns 529 through 540

  -14.7200  -14.7100  -14.7000  -14.6900  -14.6800  -14.6700  -14.6600  -14.6500  -14.6400  -14.6300  -14.6200  -14.6100

  Columns 541 through 552

  -14.6000  -14.5900  -14.5800  -14.5700  -14.5600  -14.5500  -14.5400  -14.5300  -14.5200  -14.5100  -14.5000  -14.4900

  Columns 553 through 564

  -14.4800  -14.4700  -14.4600  -14.4500  -14.4400  -14.4300  -14.4200  -14.4100  -14.4000  -14.3900  -14.3800  -14.3700

  Columns 565 through 576

  -14.3600  -14.3500  -14.3400  -14.3300  -14.3200  -14.3100  -14.3000  -14.2900  -14.2800  -14.2700  -14.2600  -14.2500

  Columns 577 through 588

  -14.2400  -14.2300  -14.2200  -14.2100  -14.2000  -14.1900  -14.1800  -14.1700  -14.1600  -14.1500  -14.1400  -14.1300

  Columns 589 through 600

  -14.1200  -14.1100  -14.1000  -14.0900  -14.0800  -14.0700  -14.0600  -14.0500  -14.0400  -14.0300  -14.0200  -14.0100

  Columns 601 through 612

  -14.0000  -13.9900  -13.9800  -13.9700  -13.9600  -13.9500  -13.9400  -13.9300  -13.9200  -13.9100  -13.9000  -13.8900

  Columns 613 through 624

  -13.8800  -13.8700  -13.8600  -13.8500  -13.8400  -13.8300  -13.8200  -13.8100  -13.8000  -13.7900  -13.7800  -13.7700

  Columns 625 through 636

  -13.7600  -13.7500  -13.7400  -13.7300  -13.7200  -13.7100  -13.7000  -13.6900  -13.6800  -13.6700  -13.6600  -13.6500

  Columns 637 through 648

  -13.6400  -13.6300  -13.6200  -13.6100  -13.6000  -13.5900  -13.5800  -13.5700  -13.5600  -13.5500  -13.5400  -13.5300

  Columns 649 through 660

  -13.5200  -13.5100  -13.5000  -13.4900  -13.4800  -13.4700  -13.4600  -13.4500  -13.4400  -13.4300  -13.4200  -13.4100

  Columns 661 through 672

  -13.4000  -13.3900  -13.3800  -13.3700  -13.3600  -13.3500  -13.3400  -13.3300  -13.3200  -13.3100  -13.3000  -13.2900

  Columns 673 through 684

  -13.2800  -13.2700  -13.2600  -13.2500  -13.2400  -13.2300  -13.2200  -13.2100  -13.2000  -13.1900  -13.1800  -13.1700

  Columns 685 through 696

  -13.1600  -13.1500  -13.1400  -13.1300  -13.1200  -13.1100  -13.1000  -13.0900  -13.0800  -13.0700  -13.0600  -13.0500

  Columns 697 through 708

  -13.0400  -13.0300  -13.0200  -13.0100  -13.0000  -12.9900  -12.9800  -12.9700  -12.9600  -12.9500  -12.9400  -12.9300

  Columns 709 through 720

  -12.9200  -12.9100  -12.9000  -12.8900  -12.8800  -12.8700  -12.8600  -12.8500  -12.8400  -12.8300  -12.8200  -12.8100

  Columns 721 through 732

  -12.8000  -12.7900  -12.7800  -12.7700  -12.7600  -12.7500  -12.7400  -12.7300  -12.7200  -12.7100  -12.7000  -12.6900

  Columns 733 through 744

  -12.6800  -12.6700  -12.6600  -12.6500  -12.6400  -12.6300  -12.6200  -12.6100  -12.6000  -12.5900  -12.5800  -12.5700

  Columns 745 through 756

  -12.5600  -12.5500  -12.5400  -12.5300  -12.5200  -12.5100  -12.5000  -12.4900  -12.4800  -12.4700  -12.4600  -12.4500

  Columns 757 through 768

  -12.4400  -12.4300  -12.4200  -12.4100  -12.4000  -12.3900  -12.3800  -12.3700  -12.3600  -12.3500  -12.3400  -12.3300

  Columns 769 through 780

  -12.3200  -12.3100  -12.3000  -12.2900  -12.2800  -12.2700  -12.2600  -12.2500  -12.2400  -12.2300  -12.2200  -12.2100

  Columns 781 through 792

  -12.2000  -12.1900  -12.1800  -12.1700  -12.1600  -12.1500  -12.1400  -12.1300  -12.1200  -12.1100  -12.1000  -12.0900

  Columns 793 through 804

  -12.0800  -12.0700  -12.0600  -12.0500  -12.0400  -12.0300  -12.0200  -12.0100  -12.0000  -11.9900  -11.9800  -11.9700

  Columns 805 through 816

  -11.9600  -11.9500  -11.9400  -11.9300  -11.9200  -11.9100  -11.9000  -11.8900  -11.8800  -11.8700  -11.8600  -11.8500

  Columns 817 through 828

  -11.8400  -11.8300  -11.8200  -11.8100  -11.8000  -11.7900  -11.7800  -11.7700  -11.7600  -11.7500  -11.7400  -11.7300

  Columns 829 through 840

  -11.7200  -11.7100  -11.7000  -11.6900  -11.6800  -11.6700  -11.6600  -11.6500  -11.6400  -11.6300  -11.6200  -11.6100

  Columns 841 through 852

  -11.6000  -11.5900  -11.5800  -11.5700  -11.5600  -11.5500  -11.5400  -11.5300  -11.5200  -11.5100  -11.5000  -11.4900

  Columns 853 through 864

  -11.4800  -11.4700  -11.4600  -11.4500  -11.4400  -11.4300  -11.4200  -11.4100  -11.4000  -11.3900  -11.3800  -11.3700

  Columns 865 through 876

  -11.3600  -11.3500  -11.3400  -11.3300  -11.3200  -11.3100  -11.3000  -11.2900  -11.2800  -11.2700  -11.2600  -11.2500

  Columns 877 through 888

  -11.2400  -11.2300  -11.2200  -11.2100  -11.2000  -11.1900  -11.1800  -11.1700  -11.1600  -11.1500  -11.1400  -11.1300

  Columns 889 through 900

  -11.1200  -11.1100  -11.1000  -11.0900  -11.0800  -11.0700  -11.0600  -11.0500  -11.0400  -11.0300  -11.0200  -11.0100

  Columns 901 through 912

  -11.0000  -10.9900  -10.9800  -10.9700  -10.9600  -10.9500  -10.9400  -10.9300  -10.9200  -10.9100  -10.9000  -10.8900

  Columns 913 through 924

  -10.8800  -10.8700  -10.8600  -10.8500  -10.8400  -10.8300  -10.8200  -10.8100  -10.8000  -10.7900  -10.7800  -10.7700

  Columns 925 through 936

  -10.7600  -10.7500  -10.7400  -10.7300  -10.7200  -10.7100  -10.7000  -10.6900  -10.6800  -10.6700  -10.6600  -10.6500

  Columns 937 through 948

  -10.6400  -10.6300  -10.6200  -10.6100  -10.6000  -10.5900  -10.5800  -10.5700  -10.5600  -10.5500  -10.5400  -10.5300

  Columns 949 through 960

  -10.5200  -10.5100  -10.5000  -10.4900  -10.4800  -10.4700  -10.4600  -10.4500  -10.4400  -10.4300  -10.4200  -10.4100

  Columns 961 through 972

  -10.4000  -10.3900  -10.3800  -10.3700  -10.3600  -10.3500  -10.3400  -10.3300  -10.3200  -10.3100  -10.3000  -10.2900

  Columns 973 through 984

  -10.2800  -10.2700  -10.2600  -10.2500  -10.2400  -10.2300  -10.2200  -10.2100  -10.2000  -10.1900  -10.1800  -10.1700

  Columns 985 through 996

  -10.1600  -10.1500  -10.1400  -10.1300  -10.1200  -10.1100  -10.1000  -10.0900  -10.0800  -10.0700  -10.0600  -10.0500

  Columns 997 through 1008

  -10.0400  -10.0300  -10.0200  -10.0100  -10.0000   -9.9900   -9.9800   -9.9700   -9.9600   -9.9500   -9.9400   -9.9300

  Columns 1009 through 1020

   -9.9200   -9.9100   -9.9000   -9.8900   -9.8800   -9.8700   -9.8600   -9.8500   -9.8400   -9.8300   -9.8200   -9.8100

  Columns 1021 through 1032

   -9.8000   -9.7900   -9.7800   -9.7700   -9.7600   -9.7500   -9.7400   -9.7300   -9.7200   -9.7100   -9.7000   -9.6900

  Columns 1033 through 1044

   -9.6800   -9.6700   -9.6600   -9.6500   -9.6400   -9.6300   -9.6200   -9.6100   -9.6000   -9.5900   -9.5800   -9.5700

  Columns 1045 through 1056

   -9.5600   -9.5500   -9.5400   -9.5300   -9.5200   -9.5100   -9.5000   -9.4900   -9.4800   -9.4700   -9.4600   -9.4500

  Columns 1057 through 1068

   -9.4400   -9.4300   -9.4200   -9.4100   -9.4000   -9.3900   -9.3800   -9.3700   -9.3600   -9.3500   -9.3400   -9.3300

  Columns 1069 through 1080

   -9.3200   -9.3100   -9.3000   -9.2900   -9.2800   -9.2700   -9.2600   -9.2500   -9.2400   -9.2300   -9.2200   -9.2100

  Columns 1081 through 1092

   -9.2000   -9.1900   -9.1800   -9.1700   -9.1600   -9.1500   -9.1400   -9.1300   -9.1200   -9.1100   -9.1000   -9.0900

  Columns 1093 through 1104

   -9.0800   -9.0700   -9.0600   -9.0500   -9.0400   -9.0300   -9.0200   -9.0100   -9.0000   -8.9900   -8.9800   -8.9700

  Columns 1105 through 1116

   -8.9600   -8.9500   -8.9400   -8.9300   -8.9200   -8.9100   -8.9000   -8.8900   -8.8800   -8.8700   -8.8600   -8.8500

  Columns 1117 through 1128

   -8.8400   -8.8300   -8.8200   -8.8100   -8.8000   -8.7900   -8.7800   -8.7700   -8.7600   -8.7500   -8.7400   -8.7300

  Columns 1129 through 1140

   -8.7200   -8.7100   -8.7000   -8.6900   -8.6800   -8.6700   -8.6600   -8.6500   -8.6400   -8.6300   -8.6200   -8.6100

  Columns 1141 through 1152

   -8.6000   -8.5900   -8.5800   -8.5700   -8.5600   -8.5500   -8.5400   -8.5300   -8.5200   -8.5100   -8.5000   -8.4900

  Columns 1153 through 1164

   -8.4800   -8.4700   -8.4600   -8.4500   -8.4400   -8.4300   -8.4200   -8.4100   -8.4000   -8.3900   -8.3800   -8.3700

  Columns 1165 through 1176

   -8.3600   -8.3500   -8.3400   -8.3300   -8.3200   -8.3100   -8.3000   -8.2900   -8.2800   -8.2700   -8.2600   -8.2500

  Columns 1177 through 1188

   -8.2400   -8.2300   -8.2200   -8.2100   -8.2000   -8.1900   -8.1800   -8.1700   -8.1600   -8.1500   -8.1400   -8.1300

  Columns 1189 through 1200

   -8.1200   -8.1100   -8.1000   -8.0900   -8.0800   -8.0700   -8.0600   -8.0500   -8.0400   -8.0300   -8.0200   -8.0100

  Columns 1201 through 1212

   -8.0000   -7.9900   -7.9800   -7.9700   -7.9600   -7.9500   -7.9400   -7.9300   -7.9200   -7.9100   -7.9000   -7.8900

  Columns 1213 through 1224

   -7.8800   -7.8700   -7.8600   -7.8500   -7.8400   -7.8300   -7.8200   -7.8100   -7.8000   -7.7900   -7.7800   -7.7700

  Columns 1225 through 1236

   -7.7600   -7.7500   -7.7400   -7.7300   -7.7200   -7.7100   -7.7000   -7.6900   -7.6800   -7.6700   -7.6600   -7.6500

  Columns 1237 through 1248

   -7.6400   -7.6300   -7.6200   -7.6100   -7.6000   -7.5900   -7.5800   -7.5700   -7.5600   -7.5500   -7.5400   -7.5300

  Columns 1249 through 1260

   -7.5200   -7.5100   -7.5000   -7.4900   -7.4800   -7.4700   -7.4600   -7.4500   -7.4400   -7.4300   -7.4200   -7.4100

  Columns 1261 through 1272

   -7.4000   -7.3900   -7.3800   -7.3700   -7.3600   -7.3500   -7.3400   -7.3300   -7.3200   -7.3100   -7.3000   -7.2900

  Columns 1273 through 1284

   -7.2800   -7.2700   -7.2600   -7.2500   -7.2400   -7.2300   -7.2200   -7.2100   -7.2000   -7.1900   -7.1800   -7.1700

  Columns 1285 through 1296

   -7.1600   -7.1500   -7.1400   -7.1300   -7.1200   -7.1100   -7.1000   -7.0900   -7.0800   -7.0700   -7.0600   -7.0500

  Columns 1297 through 1308

   -7.0400   -7.0300   -7.0200   -7.0100   -7.0000   -6.9900   -6.9800   -6.9700   -6.9600   -6.9500   -6.9400   -6.9300

  Columns 1309 through 1320

   -6.9200   -6.9100   -6.9000   -6.8900   -6.8800   -6.8700   -6.8600   -6.8500   -6.8400   -6.8300   -6.8200   -6.8100

  Columns 1321 through 1332

   -6.8000   -6.7900   -6.7800   -6.7700   -6.7600   -6.7500   -6.7400   -6.7300   -6.7200   -6.7100   -6.7000   -6.6900

  Columns 1333 through 1344

   -6.6800   -6.6700   -6.6600   -6.6500   -6.6400   -6.6300   -6.6200   -6.6100   -6.6000   -6.5900   -6.5800   -6.5700

  Columns 1345 through 1356

   -6.5600   -6.5500   -6.5400   -6.5300   -6.5200   -6.5100   -6.5000   -6.4900   -6.4800   -6.4700   -6.4600   -6.4500

  Columns 1357 through 1368

   -6.4400   -6.4300   -6.4200   -6.4100   -6.4000   -6.3900   -6.3800   -6.3700   -6.3600   -6.3500   -6.3400   -6.3300

  Columns 1369 through 1380

   -6.3200   -6.3100   -6.3000   -6.2900   -6.2800   -6.2700   -6.2600   -6.2500   -6.2400   -6.2300   -6.2200   -6.2100

  Columns 1381 through 1392

   -6.2000   -6.1900   -6.1800   -6.1700   -6.1600   -6.1500   -6.1400   -6.1300   -6.1200   -6.1100   -6.1000   -6.0900

  Columns 1393 through 1404

   -6.0800   -6.0700   -6.0600   -6.0500   -6.0400   -6.0300   -6.0200   -6.0100   -6.0000   -5.9900   -5.9800   -5.9700

  Columns 1405 through 1416

   -5.9600   -5.9500   -5.9400   -5.9300   -5.9200   -5.9100   -5.9000   -5.8900   -5.8800   -5.8700   -5.8600   -5.8500

  Columns 1417 through 1428

   -5.8400   -5.8300   -5.8200   -5.8100   -5.8000   -5.7900   -5.7800   -5.7700   -5.7600   -5.7500   -5.7400   -5.7300

  Columns 1429 through 1440

   -5.7200   -5.7100   -5.7000   -5.6900   -5.6800   -5.6700   -5.6600   -5.6500   -5.6400   -5.6300   -5.6200   -5.6100

  Columns 1441 through 1452

   -5.6000   -5.5900   -5.5800   -5.5700   -5.5600   -5.5500   -5.5400   -5.5300   -5.5200   -5.5100   -5.5000   -5.4900

  Columns 1453 through 1464

   -5.4800   -5.4700   -5.4600   -5.4500   -5.4400   -5.4300   -5.4200   -5.4100   -5.4000   -5.3900   -5.3800   -5.3700

  Columns 1465 through 1476

   -5.3600   -5.3500   -5.3400   -5.3300   -5.3200   -5.3100   -5.3000   -5.2900   -5.2800   -5.2700   -5.2600   -5.2500

  Columns 1477 through 1488

   -5.2400   -5.2300   -5.2200   -5.2100   -5.2000   -5.1900   -5.1800   -5.1700   -5.1600   -5.1500   -5.1400   -5.1300

  Columns 1489 through 1500

   -5.1200   -5.1100   -5.1000   -5.0900   -5.0800   -5.0700   -5.0600   -5.0500   -5.0400   -5.0300   -5.0200   -5.0100

  Columns 1501 through 1512

   -5.0000   -4.9900   -4.9800   -4.9700   -4.9600   -4.9500   -4.9400   -4.9300   -4.9200   -4.9100   -4.9000   -4.8900

  Columns 1513 through 1524

   -4.8800   -4.8700   -4.8600   -4.8500   -4.8400   -4.8300   -4.8200   -4.8100   -4.8000   -4.7900   -4.7800   -4.7700

  Columns 1525 through 1536

   -4.7600   -4.7500   -4.7400   -4.7300   -4.7200   -4.7100   -4.7000   -4.6900   -4.6800   -4.6700   -4.6600   -4.6500

  Columns 1537 through 1548

   -4.6400   -4.6300   -4.6200   -4.6100   -4.6000   -4.5900   -4.5800   -4.5700   -4.5600   -4.5500   -4.5400   -4.5300

  Columns 1549 through 1560

   -4.5200   -4.5100   -4.5000   -4.4900   -4.4800   -4.4700   -4.4600   -4.4500   -4.4400   -4.4300   -4.4200   -4.4100

  Columns 1561 through 1572

   -4.4000   -4.3900   -4.3800   -4.3700   -4.3600   -4.3500   -4.3400   -4.3300   -4.3200   -4.3100   -4.3000   -4.2900

  Columns 1573 through 1584

   -4.2800   -4.2700   -4.2600   -4.2500   -4.2400   -4.2300   -4.2200   -4.2100   -4.2000   -4.1900   -4.1800   -4.1700

  Columns 1585 through 1596

   -4.1600   -4.1500   -4.1400   -4.1300   -4.1200   -4.1100   -4.1000   -4.0900   -4.0800   -4.0700   -4.0600   -4.0500

  Columns 1597 through 1608

   -4.0400   -4.0300   -4.0200   -4.0100   -4.0000   -3.9900   -3.9800   -3.9700   -3.9600   -3.9500   -3.9400   -3.9300

  Columns 1609 through 1620

   -3.9200   -3.9100   -3.9000   -3.8900   -3.8800   -3.8700   -3.8600   -3.8500   -3.8400   -3.8300   -3.8200   -3.8100

  Columns 1621 through 1632

   -3.8000   -3.7900   -3.7800   -3.7700   -3.7600   -3.7500   -3.7400   -3.7300   -3.7200   -3.7100   -3.7000   -3.6900

  Columns 1633 through 1644

   -3.6800   -3.6700   -3.6600   -3.6500   -3.6400   -3.6300   -3.6200   -3.6100   -3.6000   -3.5900   -3.5800   -3.5700

  Columns 1645 through 1656

   -3.5600   -3.5500   -3.5400   -3.5300   -3.5200   -3.5100   -3.5000   -3.4900   -3.4800   -3.4700   -3.4600   -3.4500

  Columns 1657 through 1668

   -3.4400   -3.4300   -3.4200   -3.4100   -3.4000   -3.3900   -3.3800   -3.3700   -3.3600   -3.3500   -3.3400   -3.3300

  Columns 1669 through 1680

   -3.3200   -3.3100   -3.3000   -3.2900   -3.2800   -3.2700   -3.2600   -3.2500   -3.2400   -3.2300   -3.2200   -3.2100

  Columns 1681 through 1692

   -3.2000   -3.1900   -3.1800   -3.1700   -3.1600   -3.1500   -3.1400   -3.1300   -3.1200   -3.1100   -3.1000   -3.0900

  Columns 1693 through 1704

   -3.0800   -3.0700   -3.0600   -3.0500   -3.0400   -3.0300   -3.0200   -3.0100   -3.0000   -2.9900   -2.9800   -2.9700

  Columns 1705 through 1716

   -2.9600   -2.9500   -2.9400   -2.9300   -2.9200   -2.9100   -2.9000   -2.8900   -2.8800   -2.8700   -2.8600   -2.8500

  Columns 1717 through 1728

   -2.8400   -2.8300   -2.8200   -2.8100   -2.8000   -2.7900   -2.7800   -2.7700   -2.7600   -2.7500   -2.7400   -2.7300

  Columns 1729 through 1740

   -2.7200   -2.7100   -2.7000   -2.6900   -2.6800   -2.6700   -2.6600   -2.6500   -2.6400   -2.6300   -2.6200   -2.6100

  Columns 1741 through 1752

   -2.6000   -2.5900   -2.5800   -2.5700   -2.5600   -2.5500   -2.5400   -2.5300   -2.5200   -2.5100   -2.5000   -2.4900

  Columns 1753 through 1764

   -2.4800   -2.4700   -2.4600   -2.4500   -2.4400   -2.4300   -2.4200   -2.4100   -2.4000   -2.3900   -2.3800   -2.3700

  Columns 1765 through 1776

   -2.3600   -2.3500   -2.3400   -2.3300   -2.3200   -2.3100   -2.3000   -2.2900   -2.2800   -2.2700   -2.2600   -2.2500

  Columns 1777 through 1788

   -2.2400   -2.2300   -2.2200   -2.2100   -2.2000   -2.1900   -2.1800   -2.1700   -2.1600   -2.1500   -2.1400   -2.1300

  Columns 1789 through 1800

   -2.1200   -2.1100   -2.1000   -2.0900   -2.0800   -2.0700   -2.0600   -2.0500   -2.0400   -2.0300   -2.0200   -2.0100

  Columns 1801 through 1812

   -2.0000   -1.9900   -1.9800   -1.9700   -1.9600   -1.9500   -1.9400   -1.9300   -1.9200   -1.9100   -1.9000   -1.8900

  Columns 1813 through 1824

   -1.8800   -1.8700   -1.8600   -1.8500   -1.8400   -1.8300   -1.8200   -1.8100   -1.8000   -1.7900   -1.7800   -1.7700

  Columns 1825 through 1836

   -1.7600   -1.7500   -1.7400   -1.7300   -1.7200   -1.7100   -1.7000   -1.6900   -1.6800   -1.6700   -1.6600   -1.6500

  Columns 1837 through 1848

   -1.6400   -1.6300   -1.6200   -1.6100   -1.6000   -1.5900   -1.5800   -1.5700   -1.5600   -1.5500   -1.5400   -1.5300

  Columns 1849 through 1860

   -1.5200   -1.5100   -1.5000   -1.4900   -1.4800   -1.4700   -1.4600   -1.4500   -1.4400   -1.4300   -1.4200   -1.4100

  Columns 1861 through 1872

   -1.4000   -1.3900   -1.3800   -1.3700   -1.3600   -1.3500   -1.3400   -1.3300   -1.3200   -1.3100   -1.3000   -1.2900

  Columns 1873 through 1884

   -1.2800   -1.2700   -1.2600   -1.2500   -1.2400   -1.2300   -1.2200   -1.2100   -1.2000   -1.1900   -1.1800   -1.1700

  Columns 1885 through 1896

   -1.1600   -1.1500   -1.1400   -1.1300   -1.1200   -1.1100   -1.1000   -1.0900   -1.0800   -1.0700   -1.0600   -1.0500

  Columns 1897 through 1908

   -1.0400   -1.0300   -1.0200   -1.0100   -1.0000   -0.9900   -0.9800   -0.9700   -0.9600   -0.9500   -0.9400   -0.9300

  Columns 1909 through 1920

   -0.9200   -0.9100   -0.9000   -0.8900   -0.8800   -0.8700   -0.8600   -0.8500   -0.8400   -0.8300   -0.8200   -0.8100

  Columns 1921 through 1932

   -0.8000   -0.7900   -0.7800   -0.7700   -0.7600   -0.7500   -0.7400   -0.7300   -0.7200   -0.7100   -0.7000   -0.6900

  Columns 1933 through 1944

   -0.6800   -0.6700   -0.6600   -0.6500   -0.6400   -0.6300   -0.6200   -0.6100   -0.6000   -0.5900   -0.5800   -0.5700

  Columns 1945 through 1956

   -0.5600   -0.5500   -0.5400   -0.5300   -0.5200   -0.5100   -0.5000   -0.4900   -0.4800   -0.4700   -0.4600   -0.4500

  Columns 1957 through 1968

   -0.4400   -0.4300   -0.4200   -0.4100   -0.4000   -0.3900   -0.3800   -0.3700   -0.3600   -0.3500   -0.3400   -0.3300

  Columns 1969 through 1980

   -0.3200   -0.3100   -0.3000   -0.2900   -0.2800   -0.2700   -0.2600   -0.2500   -0.2400   -0.2300   -0.2200   -0.2100

  Columns 1981 through 1992

   -0.2000   -0.1900   -0.1800   -0.1700   -0.1600   -0.1500   -0.1400   -0.1300   -0.1200   -0.1100   -0.1000   -0.0900

  Columns 1993 through 2004

   -0.0800   -0.0700   -0.0600   -0.0500   -0.0400   -0.0300   -0.0200   -0.0100         0    0.0100    0.0200    0.0300

  Columns 2005 through 2016

    0.0400    0.0500    0.0600    0.0700    0.0800    0.0900    0.1000    0.1100    0.1200    0.1300    0.1400    0.1500

  Columns 2017 through 2028

    0.1600    0.1700    0.1800    0.1900    0.2000    0.2100    0.2200    0.2300    0.2400    0.2500    0.2600    0.2700

  Columns 2029 through 2040

    0.2800    0.2900    0.3000    0.3100    0.3200    0.3300    0.3400    0.3500    0.3600    0.3700    0.3800    0.3900

  Columns 2041 through 2052

    0.4000    0.4100    0.4200    0.4300    0.4400    0.4500    0.4600    0.4700    0.4800    0.4900    0.5000    0.5100

  Columns 2053 through 2064

    0.5200    0.5300    0.5400    0.5500    0.5600    0.5700    0.5800    0.5900    0.6000    0.6100    0.6200    0.6300

  Columns 2065 through 2076

    0.6400    0.6500    0.6600    0.6700    0.6800    0.6900    0.7000    0.7100    0.7200    0.7300    0.7400    0.7500

  Columns 2077 through 2088

    0.7600    0.7700    0.7800    0.7900    0.8000    0.8100    0.8200    0.8300    0.8400    0.8500    0.8600    0.8700

  Columns 2089 through 2100

    0.8800    0.8900    0.9000    0.9100    0.9200    0.9300    0.9400    0.9500    0.9600    0.9700    0.9800    0.9900

  Columns 2101 through 2112

    1.0000    1.0100    1.0200    1.0300    1.0400    1.0500    1.0600    1.0700    1.0800    1.0900    1.1000    1.1100

  Columns 2113 through 2124

    1.1200    1.1300    1.1400    1.1500    1.1600    1.1700    1.1800    1.1900    1.2000    1.2100    1.2200    1.2300

  Columns 2125 through 2136

    1.2400    1.2500    1.2600    1.2700    1.2800    1.2900    1.3000    1.3100    1.3200    1.3300    1.3400    1.3500

  Columns 2137 through 2148

    1.3600    1.3700    1.3800    1.3900    1.4000    1.4100    1.4200    1.4300    1.4400    1.4500    1.4600    1.4700

  Columns 2149 through 2160

    1.4800    1.4900    1.5000    1.5100    1.5200    1.5300    1.5400    1.5500    1.5600    1.5700    1.5800    1.5900

  Columns 2161 through 2172

    1.6000    1.6100    1.6200    1.6300    1.6400    1.6500    1.6600    1.6700    1.6800    1.6900    1.7000    1.7100

  Columns 2173 through 2184

    1.7200    1.7300    1.7400    1.7500    1.7600    1.7700    1.7800    1.7900    1.8000    1.8100    1.8200    1.8300

  Columns 2185 through 2196

    1.8400    1.8500    1.8600    1.8700    1.8800    1.8900    1.9000    1.9100    1.9200    1.9300    1.9400    1.9500

  Columns 2197 through 2208

    1.9600    1.9700    1.9800    1.9900    2.0000    2.0100    2.0200    2.0300    2.0400    2.0500    2.0600    2.0700

  Columns 2209 through 2220

    2.0800    2.0900    2.1000    2.1100    2.1200    2.1300    2.1400    2.1500    2.1600    2.1700    2.1800    2.1900

  Columns 2221 through 2232

    2.2000    2.2100    2.2200    2.2300    2.2400    2.2500    2.2600    2.2700    2.2800    2.2900    2.3000    2.3100

  Columns 2233 through 2244

    2.3200    2.3300    2.3400    2.3500    2.3600    2.3700    2.3800    2.3900    2.4000    2.4100    2.4200    2.4300

  Columns 2245 through 2256

    2.4400    2.4500    2.4600    2.4700    2.4800    2.4900    2.5000    2.5100    2.5200    2.5300    2.5400    2.5500

  Columns 2257 through 2268

    2.5600    2.5700    2.5800    2.5900    2.6000    2.6100    2.6200    2.6300    2.6400    2.6500    2.6600    2.6700

  Columns 2269 through 2280

    2.6800    2.6900    2.7000    2.7100    2.7200    2.7300    2.7400    2.7500    2.7600    2.7700    2.7800    2.7900

  Columns 2281 through 2292

    2.8000    2.8100    2.8200    2.8300    2.8400    2.8500    2.8600    2.8700    2.8800    2.8900    2.9000    2.9100

  Columns 2293 through 2304

    2.9200    2.9300    2.9400    2.9500    2.9600    2.9700    2.9800    2.9900    3.0000    3.0100    3.0200    3.0300

  Columns 2305 through 2316

    3.0400    3.0500    3.0600    3.0700    3.0800    3.0900    3.1000    3.1100    3.1200    3.1300    3.1400    3.1500

  Columns 2317 through 2328

    3.1600    3.1700    3.1800    3.1900    3.2000    3.2100    3.2200    3.2300    3.2400    3.2500    3.2600    3.2700

  Columns 2329 through 2340

    3.2800    3.2900    3.3000    3.3100    3.3200    3.3300    3.3400    3.3500    3.3600    3.3700    3.3800    3.3900

  Columns 2341 through 2352

    3.4000    3.4100    3.4200    3.4300    3.4400    3.4500    3.4600    3.4700    3.4800    3.4900    3.5000    3.5100

  Columns 2353 through 2364

    3.5200    3.5300    3.5400    3.5500    3.5600    3.5700    3.5800    3.5900    3.6000    3.6100    3.6200    3.6300

  Columns 2365 through 2376

    3.6400    3.6500    3.6600    3.6700    3.6800    3.6900    3.7000    3.7100    3.7200    3.7300    3.7400    3.7500

  Columns 2377 through 2388

    3.7600    3.7700    3.7800    3.7900    3.8000    3.8100    3.8200    3.8300    3.8400    3.8500    3.8600    3.8700

  Columns 2389 through 2400

    3.8800    3.8900    3.9000    3.9100    3.9200    3.9300    3.9400    3.9500    3.9600    3.9700    3.9800    3.9900

  Columns 2401 through 2412

    4.0000    4.0100    4.0200    4.0300    4.0400    4.0500    4.0600    4.0700    4.0800    4.0900    4.1000    4.1100

  Columns 2413 through 2424

    4.1200    4.1300    4.1400    4.1500    4.1600    4.1700    4.1800    4.1900    4.2000    4.2100    4.2200    4.2300

  Columns 2425 through 2436

    4.2400    4.2500    4.2600    4.2700    4.2800    4.2900    4.3000    4.3100    4.3200    4.3300    4.3400    4.3500

  Columns 2437 through 2448

    4.3600    4.3700    4.3800    4.3900    4.4000    4.4100    4.4200    4.4300    4.4400    4.4500    4.4600    4.4700

  Columns 2449 through 2460

    4.4800    4.4900    4.5000    4.5100    4.5200    4.5300    4.5400    4.5500    4.5600    4.5700    4.5800    4.5900

  Columns 2461 through 2472

    4.6000    4.6100    4.6200    4.6300    4.6400    4.6500    4.6600    4.6700    4.6800    4.6900    4.7000    4.7100

  Columns 2473 through 2484

    4.7200    4.7300    4.7400    4.7500    4.7600    4.7700    4.7800    4.7900    4.8000    4.8100    4.8200    4.8300

  Columns 2485 through 2496

    4.8400    4.8500    4.8600    4.8700    4.8800    4.8900    4.9000    4.9100    4.9200    4.9300    4.9400    4.9500

  Columns 2497 through 2508

    4.9600    4.9700    4.9800    4.9900    5.0000    5.0100    5.0200    5.0300    5.0400    5.0500    5.0600    5.0700

  Columns 2509 through 2520

    5.0800    5.0900    5.1000    5.1100    5.1200    5.1300    5.1400    5.1500    5.1600    5.1700    5.1800    5.1900

  Columns 2521 through 2532

    5.2000    5.2100    5.2200    5.2300    5.2400    5.2500    5.2600    5.2700    5.2800    5.2900    5.3000    5.3100

  Columns 2533 through 2544

    5.3200    5.3300    5.3400    5.3500    5.3600    5.3700    5.3800    5.3900    5.4000    5.4100    5.4200    5.4300

  Columns 2545 through 2556

    5.4400    5.4500    5.4600    5.4700    5.4800    5.4900    5.5000    5.5100    5.5200    5.5300    5.5400    5.5500

  Columns 2557 through 2568

    5.5600    5.5700    5.5800    5.5900    5.6000    5.6100    5.6200    5.6300    5.6400    5.6500    5.6600    5.6700

  Columns 2569 through 2580

    5.6800    5.6900    5.7000    5.7100    5.7200    5.7300    5.7400    5.7500    5.7600    5.7700    5.7800    5.7900

  Columns 2581 through 2592

    5.8000    5.8100    5.8200    5.8300    5.8400    5.8500    5.8600    5.8700    5.8800    5.8900    5.9000    5.9100

  Columns 2593 through 2604

    5.9200    5.9300    5.9400    5.9500    5.9600    5.9700    5.9800    5.9900    6.0000    6.0100    6.0200    6.0300

  Columns 2605 through 2616

    6.0400    6.0500    6.0600    6.0700    6.0800    6.0900    6.1000    6.1100    6.1200    6.1300    6.1400    6.1500

  Columns 2617 through 2628

    6.1600    6.1700    6.1800    6.1900    6.2000    6.2100    6.2200    6.2300    6.2400    6.2500    6.2600    6.2700

  Columns 2629 through 2640

    6.2800    6.2900    6.3000    6.3100    6.3200    6.3300    6.3400    6.3500    6.3600    6.3700    6.3800    6.3900

  Columns 2641 through 2652

    6.4000    6.4100    6.4200    6.4300    6.4400    6.4500    6.4600    6.4700    6.4800    6.4900    6.5000    6.5100

  Columns 2653 through 2664

    6.5200    6.5300    6.5400    6.5500    6.5600    6.5700    6.5800    6.5900    6.6000    6.6100    6.6200    6.6300

  Columns 2665 through 2676

    6.6400    6.6500    6.6600    6.6700    6.6800    6.6900    6.7000    6.7100    6.7200    6.7300    6.7400    6.7500

  Columns 2677 through 2688

    6.7600    6.7700    6.7800    6.7900    6.8000    6.8100    6.8200    6.8300    6.8400    6.8500    6.8600    6.8700

  Columns 2689 through 2700

    6.8800    6.8900    6.9000    6.9100    6.9200    6.9300    6.9400    6.9500    6.9600    6.9700    6.9800    6.9900

  Columns 2701 through 2712

    7.0000    7.0100    7.0200    7.0300    7.0400    7.0500    7.0600    7.0700    7.0800    7.0900    7.1000    7.1100

  Columns 2713 through 2724

    7.1200    7.1300    7.1400    7.1500    7.1600    7.1700    7.1800    7.1900    7.2000    7.2100    7.2200    7.2300

  Columns 2725 through 2736

    7.2400    7.2500    7.2600    7.2700    7.2800    7.2900    7.3000    7.3100    7.3200    7.3300    7.3400    7.3500

  Columns 2737 through 2748

    7.3600    7.3700    7.3800    7.3900    7.4000    7.4100    7.4200    7.4300    7.4400    7.4500    7.4600    7.4700

  Columns 2749 through 2760

    7.4800    7.4900    7.5000    7.5100    7.5200    7.5300    7.5400    7.5500    7.5600    7.5700    7.5800    7.5900

  Columns 2761 through 2772

    7.6000    7.6100    7.6200    7.6300    7.6400    7.6500    7.6600    7.6700    7.6800    7.6900    7.7000    7.7100

  Columns 2773 through 2784

    7.7200    7.7300    7.7400    7.7500    7.7600    7.7700    7.7800    7.7900    7.8000    7.8100    7.8200    7.8300

  Columns 2785 through 2796

    7.8400    7.8500    7.8600    7.8700    7.8800    7.8900    7.9000    7.9100    7.9200    7.9300    7.9400    7.9500

  Columns 2797 through 2808

    7.9600    7.9700    7.9800    7.9900    8.0000    8.0100    8.0200    8.0300    8.0400    8.0500    8.0600    8.0700

  Columns 2809 through 2820

    8.0800    8.0900    8.1000    8.1100    8.1200    8.1300    8.1400    8.1500    8.1600    8.1700    8.1800    8.1900

  Columns 2821 through 2832

    8.2000    8.2100    8.2200    8.2300    8.2400    8.2500    8.2600    8.2700    8.2800    8.2900    8.3000    8.3100

  Columns 2833 through 2844

    8.3200    8.3300    8.3400    8.3500    8.3600    8.3700    8.3800    8.3900    8.4000    8.4100    8.4200    8.4300

  Columns 2845 through 2856

    8.4400    8.4500    8.4600    8.4700    8.4800    8.4900    8.5000    8.5100    8.5200    8.5300    8.5400    8.5500

  Columns 2857 through 2868

    8.5600    8.5700    8.5800    8.5900    8.6000    8.6100    8.6200    8.6300    8.6400    8.6500    8.6600    8.6700

  Columns 2869 through 2880

    8.6800    8.6900    8.7000    8.7100    8.7200    8.7300    8.7400    8.7500    8.7600    8.7700    8.7800    8.7900

  Columns 2881 through 2892

    8.8000    8.8100    8.8200    8.8300    8.8400    8.8500    8.8600    8.8700    8.8800    8.8900    8.9000    8.9100

  Columns 2893 through 2904

    8.9200    8.9300    8.9400    8.9500    8.9600    8.9700    8.9800    8.9900    9.0000    9.0100    9.0200    9.0300

  Columns 2905 through 2916

    9.0400    9.0500    9.0600    9.0700    9.0800    9.0900    9.1000    9.1100    9.1200    9.1300    9.1400    9.1500

  Columns 2917 through 2928

    9.1600    9.1700    9.1800    9.1900    9.2000    9.2100    9.2200    9.2300    9.2400    9.2500    9.2600    9.2700

  Columns 2929 through 2940

    9.2800    9.2900    9.3000    9.3100    9.3200    9.3300    9.3400    9.3500    9.3600    9.3700    9.3800    9.3900

  Columns 2941 through 2952

    9.4000    9.4100    9.4200    9.4300    9.4400    9.4500    9.4600    9.4700    9.4800    9.4900    9.5000    9.5100

  Columns 2953 through 2964

    9.5200    9.5300    9.5400    9.5500    9.5600    9.5700    9.5800    9.5900    9.6000    9.6100    9.6200    9.6300

  Columns 2965 through 2976

    9.6400    9.6500    9.6600    9.6700    9.6800    9.6900    9.7000    9.7100    9.7200    9.7300    9.7400    9.7500

  Columns 2977 through 2988

    9.7600    9.7700    9.7800    9.7900    9.8000    9.8100    9.8200    9.8300    9.8400    9.8500    9.8600    9.8700

  Columns 2989 through 3000

    9.8800    9.8900    9.9000    9.9100    9.9200    9.9300    9.9400    9.9500    9.9600    9.9700    9.9800    9.9900

  Columns 3001 through 3012

   10.0000   10.0100   10.0200   10.0300   10.0400   10.0500   10.0600   10.0700   10.0800   10.0900   10.1000   10.1100

  Columns 3013 through 3024

   10.1200   10.1300   10.1400   10.1500   10.1600   10.1700   10.1800   10.1900   10.2000   10.2100   10.2200   10.2300

  Columns 3025 through 3036

   10.2400   10.2500   10.2600   10.2700   10.2800   10.2900   10.3000   10.3100   10.3200   10.3300   10.3400   10.3500

  Columns 3037 through 3048

   10.3600   10.3700   10.3800   10.3900   10.4000   10.4100   10.4200   10.4300   10.4400   10.4500   10.4600   10.4700

  Columns 3049 through 3060

   10.4800   10.4900   10.5000   10.5100   10.5200   10.5300   10.5400   10.5500   10.5600   10.5700   10.5800   10.5900

  Columns 3061 through 3072

   10.6000   10.6100   10.6200   10.6300   10.6400   10.6500   10.6600   10.6700   10.6800   10.6900   10.7000   10.7100

  Columns 3073 through 3084

   10.7200   10.7300   10.7400   10.7500   10.7600   10.7700   10.7800   10.7900   10.8000   10.8100   10.8200   10.8300

  Columns 3085 through 3096

   10.8400   10.8500   10.8600   10.8700   10.8800   10.8900   10.9000   10.9100   10.9200   10.9300   10.9400   10.9500

  Columns 3097 through 3108

   10.9600   10.9700   10.9800   10.9900   11.0000   11.0100   11.0200   11.0300   11.0400   11.0500   11.0600   11.0700

  Columns 3109 through 3120

   11.0800   11.0900   11.1000   11.1100   11.1200   11.1300   11.1400   11.1500   11.1600   11.1700   11.1800   11.1900

  Columns 3121 through 3132

   11.2000   11.2100   11.2200   11.2300   11.2400   11.2500   11.2600   11.2700   11.2800   11.2900   11.3000   11.3100

  Columns 3133 through 3144

   11.3200   11.3300   11.3400   11.3500   11.3600   11.3700   11.3800   11.3900   11.4000   11.4100   11.4200   11.4300

  Columns 3145 through 3156

   11.4400   11.4500   11.4600   11.4700   11.4800   11.4900   11.5000   11.5100   11.5200   11.5300   11.5400   11.5500

  Columns 3157 through 3168

   11.5600   11.5700   11.5800   11.5900   11.6000   11.6100   11.6200   11.6300   11.6400   11.6500   11.6600   11.6700

  Columns 3169 through 3180

   11.6800   11.6900   11.7000   11.7100   11.7200   11.7300   11.7400   11.7500   11.7600   11.7700   11.7800   11.7900

  Columns 3181 through 3192

   11.8000   11.8100   11.8200   11.8300   11.8400   11.8500   11.8600   11.8700   11.8800   11.8900   11.9000   11.9100

  Columns 3193 through 3204

   11.9200   11.9300   11.9400   11.9500   11.9600   11.9700   11.9800   11.9900   12.0000   12.0100   12.0200   12.0300

  Columns 3205 through 3216

   12.0400   12.0500   12.0600   12.0700   12.0800   12.0900   12.1000   12.1100   12.1200   12.1300   12.1400   12.1500

  Columns 3217 through 3228

   12.1600   12.1700   12.1800   12.1900   12.2000   12.2100   12.2200   12.2300   12.2400   12.2500   12.2600   12.2700

  Columns 3229 through 3240

   12.2800   12.2900   12.3000   12.3100   12.3200   12.3300   12.3400   12.3500   12.3600   12.3700   12.3800   12.3900

  Columns 3241 through 3252

   12.4000   12.4100   12.4200   12.4300   12.4400   12.4500   12.4600   12.4700   12.4800   12.4900   12.5000   12.5100

  Columns 3253 through 3264

   12.5200   12.5300   12.5400   12.5500   12.5600   12.5700   12.5800   12.5900   12.6000   12.6100   12.6200   12.6300

  Columns 3265 through 3276

   12.6400   12.6500   12.6600   12.6700   12.6800   12.6900   12.7000   12.7100   12.7200   12.7300   12.7400   12.7500

  Columns 3277 through 3288

   12.7600   12.7700   12.7800   12.7900   12.8000   12.8100   12.8200   12.8300   12.8400   12.8500   12.8600   12.8700

  Columns 3289 through 3300

   12.8800   12.8900   12.9000   12.9100   12.9200   12.9300   12.9400   12.9500   12.9600   12.9700   12.9800   12.9900

  Columns 3301 through 3312

   13.0000   13.0100   13.0200   13.0300   13.0400   13.0500   13.0600   13.0700   13.0800   13.0900   13.1000   13.1100

  Columns 3313 through 3324

   13.1200   13.1300   13.1400   13.1500   13.1600   13.1700   13.1800   13.1900   13.2000   13.2100   13.2200   13.2300

  Columns 3325 through 3336

   13.2400   13.2500   13.2600   13.2700   13.2800   13.2900   13.3000   13.3100   13.3200   13.3300   13.3400   13.3500

  Columns 3337 through 3348

   13.3600   13.3700   13.3800   13.3900   13.4000   13.4100   13.4200   13.4300   13.4400   13.4500   13.4600   13.4700

  Columns 3349 through 3360

   13.4800   13.4900   13.5000   13.5100   13.5200   13.5300   13.5400   13.5500   13.5600   13.5700   13.5800   13.5900

  Columns 3361 through 3372

   13.6000   13.6100   13.6200   13.6300   13.6400   13.6500   13.6600   13.6700   13.6800   13.6900   13.7000   13.7100

  Columns 3373 through 3384

   13.7200   13.7300   13.7400   13.7500   13.7600   13.7700   13.7800   13.7900   13.8000   13.8100   13.8200   13.8300

  Columns 3385 through 3396

   13.8400   13.8500   13.8600   13.8700   13.8800   13.8900   13.9000   13.9100   13.9200   13.9300   13.9400   13.9500

  Columns 3397 through 3408

   13.9600   13.9700   13.9800   13.9900   14.0000   14.0100   14.0200   14.0300   14.0400   14.0500   14.0600   14.0700

  Columns 3409 through 3420

   14.0800   14.0900   14.1000   14.1100   14.1200   14.1300   14.1400   14.1500   14.1600   14.1700   14.1800   14.1900

  Columns 3421 through 3432

   14.2000   14.2100   14.2200   14.2300   14.2400   14.2500   14.2600   14.2700   14.2800   14.2900   14.3000   14.3100

  Columns 3433 through 3444

   14.3200   14.3300   14.3400   14.3500   14.3600   14.3700   14.3800   14.3900   14.4000   14.4100   14.4200   14.4300

  Columns 3445 through 3456

   14.4400   14.4500   14.4600   14.4700   14.4800   14.4900   14.5000   14.5100   14.5200   14.5300   14.5400   14.5500

  Columns 3457 through 3468

   14.5600   14.5700   14.5800   14.5900   14.6000   14.6100   14.6200   14.6300   14.6400   14.6500   14.6600   14.6700

  Columns 3469 through 3480

   14.6800   14.6900   14.7000   14.7100   14.7200   14.7300   14.7400   14.7500   14.7600   14.7700   14.7800   14.7900

  Columns 3481 through 3492

   14.8000   14.8100   14.8200   14.8300   14.8400   14.8500   14.8600   14.8700   14.8800   14.8900   14.9000   14.9100

  Columns 3493 through 3504

   14.9200   14.9300   14.9400   14.9500   14.9600   14.9700   14.9800   14.9900   15.0000   15.0100   15.0200   15.0300

  Columns 3505 through 3516

   15.0400   15.0500   15.0600   15.0700   15.0800   15.0900   15.1000   15.1100   15.1200   15.1300   15.1400   15.1500

  Columns 3517 through 3528

   15.1600   15.1700   15.1800   15.1900   15.2000   15.2100   15.2200   15.2300   15.2400   15.2500   15.2600   15.2700

  Columns 3529 through 3540

   15.2800   15.2900   15.3000   15.3100   15.3200   15.3300   15.3400   15.3500   15.3600   15.3700   15.3800   15.3900

  Columns 3541 through 3552

   15.4000   15.4100   15.4200   15.4300   15.4400   15.4500   15.4600   15.4700   15.4800   15.4900   15.5000   15.5100

  Columns 3553 through 3564

   15.5200   15.5300   15.5400   15.5500   15.5600   15.5700   15.5800   15.5900   15.6000   15.6100   15.6200   15.6300

  Columns 3565 through 3576

   15.6400   15.6500   15.6600   15.6700   15.6800   15.6900   15.7000   15.7100   15.7200   15.7300   15.7400   15.7500

  Columns 3577 through 3588

   15.7600   15.7700   15.7800   15.7900   15.8000   15.8100   15.8200   15.8300   15.8400   15.8500   15.8600   15.8700

  Columns 3589 through 3600

   15.8800   15.8900   15.9000   15.9100   15.9200   15.9300   15.9400   15.9500   15.9600   15.9700   15.9800   15.9900

  Columns 3601 through 3612

   16.0000   16.0100   16.0200   16.0300   16.0400   16.0500   16.0600   16.0700   16.0800   16.0900   16.1000   16.1100

  Columns 3613 through 3624

   16.1200   16.1300   16.1400   16.1500   16.1600   16.1700   16.1800   16.1900   16.2000   16.2100   16.2200   16.2300

  Columns 3625 through 3636

   16.2400   16.2500   16.2600   16.2700   16.2800   16.2900   16.3000   16.3100   16.3200   16.3300   16.3400   16.3500

  Columns 3637 through 3648

   16.3600   16.3700   16.3800   16.3900   16.4000   16.4100   16.4200   16.4300   16.4400   16.4500   16.4600   16.4700

  Columns 3649 through 3660

   16.4800   16.4900   16.5000   16.5100   16.5200   16.5300   16.5400   16.5500   16.5600   16.5700   16.5800   16.5900

  Columns 3661 through 3672

   16.6000   16.6100   16.6200   16.6300   16.6400   16.6500   16.6600   16.6700   16.6800   16.6900   16.7000   16.7100

  Columns 3673 through 3684

   16.7200   16.7300   16.7400   16.7500   16.7600   16.7700   16.7800   16.7900   16.8000   16.8100   16.8200   16.8300

  Columns 3685 through 3696

   16.8400   16.8500   16.8600   16.8700   16.8800   16.8900   16.9000   16.9100   16.9200   16.9300   16.9400   16.9500

  Columns 3697 through 3708

   16.9600   16.9700   16.9800   16.9900   17.0000   17.0100   17.0200   17.0300   17.0400   17.0500   17.0600   17.0700

  Columns 3709 through 3720

   17.0800   17.0900   17.1000   17.1100   17.1200   17.1300   17.1400   17.1500   17.1600   17.1700   17.1800   17.1900

  Columns 3721 through 3732

   17.2000   17.2100   17.2200   17.2300   17.2400   17.2500   17.2600   17.2700   17.2800   17.2900   17.3000   17.3100

  Columns 3733 through 3744

   17.3200   17.3300   17.3400   17.3500   17.3600   17.3700   17.3800   17.3900   17.4000   17.4100   17.4200   17.4300

  Columns 3745 through 3756

   17.4400   17.4500   17.4600   17.4700   17.4800   17.4900   17.5000   17.5100   17.5200   17.5300   17.5400   17.5500

  Columns 3757 through 3768

   17.5600   17.5700   17.5800   17.5900   17.6000   17.6100   17.6200   17.6300   17.6400   17.6500   17.6600   17.6700

  Columns 3769 through 3780

   17.6800   17.6900   17.7000   17.7100   17.7200   17.7300   17.7400   17.7500   17.7600   17.7700   17.7800   17.7900

  Columns 3781 through 3792

   17.8000   17.8100   17.8200   17.8300   17.8400   17.8500   17.8600   17.8700   17.8800   17.8900   17.9000   17.9100

  Columns 3793 through 3804

   17.9200   17.9300   17.9400   17.9500   17.9600   17.9700   17.9800   17.9900   18.0000   18.0100   18.0200   18.0300

  Columns 3805 through 3816

   18.0400   18.0500   18.0600   18.0700   18.0800   18.0900   18.1000   18.1100   18.1200   18.1300   18.1400   18.1500

  Columns 3817 through 3828

   18.1600   18.1700   18.1800   18.1900   18.2000   18.2100   18.2200   18.2300   18.2400   18.2500   18.2600   18.2700

  Columns 3829 through 3840

   18.2800   18.2900   18.3000   18.3100   18.3200   18.3300   18.3400   18.3500   18.3600   18.3700   18.3800   18.3900

  Columns 3841 through 3852

   18.4000   18.4100   18.4200   18.4300   18.4400   18.4500   18.4600   18.4700   18.4800   18.4900   18.5000   18.5100

  Columns 3853 through 3864

   18.5200   18.5300   18.5400   18.5500   18.5600   18.5700   18.5800   18.5900   18.6000   18.6100   18.6200   18.6300

  Columns 3865 through 3876

   18.6400   18.6500   18.6600   18.6700   18.6800   18.6900   18.7000   18.7100   18.7200   18.7300   18.7400   18.7500

  Columns 3877 through 3888

   18.7600   18.7700   18.7800   18.7900   18.8000   18.8100   18.8200   18.8300   18.8400   18.8500   18.8600   18.8700

  Columns 3889 through 3900

   18.8800   18.8900   18.9000   18.9100   18.9200   18.9300   18.9400   18.9500   18.9600   18.9700   18.9800   18.9900

  Columns 3901 through 3912

   19.0000   19.0100   19.0200   19.0300   19.0400   19.0500   19.0600   19.0700   19.0800   19.0900   19.1000   19.1100

  Columns 3913 through 3924

   19.1200   19.1300   19.1400   19.1500   19.1600   19.1700   19.1800   19.1900   19.2000   19.2100   19.2200   19.2300

  Columns 3925 through 3936

   19.2400   19.2500   19.2600   19.2700   19.2800   19.2900   19.3000   19.3100   19.3200   19.3300   19.3400   19.3500

  Columns 3937 through 3948

   19.3600   19.3700   19.3800   19.3900   19.4000   19.4100   19.4200   19.4300   19.4400   19.4500   19.4600   19.4700

  Columns 3949 through 3960

   19.4800   19.4900   19.5000   19.5100   19.5200   19.5300   19.5400   19.5500   19.5600   19.5700   19.5800   19.5900

  Columns 3961 through 3972

   19.6000   19.6100   19.6200   19.6300   19.6400   19.6500   19.6600   19.6700   19.6800   19.6900   19.7000   19.7100

  Columns 3973 through 3984

   19.7200   19.7300   19.7400   19.7500   19.7600   19.7700   19.7800   19.7900   19.8000   19.8100   19.8200   19.8300

  Columns 3985 through 3996

   19.8400   19.8500   19.8600   19.8700   19.8800   19.8900   19.9000   19.9100   19.9200   19.9300   19.9400   19.9500

  Columns 3997 through 4001

   19.9600   19.9700   19.9800   19.9900   20.0000

y_ltx = latex(y)

y_ltx =

    '\frac{x}{\sqrt{x^2+1}\,\left(x^2+2\right)}'

y_ltx = vectorize(y)

y_ltx =

    'x./((x.^2 + 1).^(1./2).*(x.^2 + 2))'

yi_ltx = vectorize(yi)

yi_ltx =

    '(log((x.^2 + 1).^(1./2).*1i - 2.^(1./2).*x.*1i + 1).*1i)./2 - (log(x + 2.^(1./2).*1i).*1i)./2 - (log(x - 2.^(1./2).*1i).*1i)./2 + (log(2.^(1./2).*x.*1i + (x.^2 + 1).^(1./2).*1i + 1).*1i)./2'

yn = eval(y_ltx)

yn =

  Columns 1 through 12

   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025

  Columns 13 through 24

   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025   -0.0025

  Columns 25 through 36

   -0.0025   -0.0025   -0.0025   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026

  Columns 37 through 48

   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026

  Columns 49 through 60

   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026   -0.0026

  Columns 61 through 72

   -0.0026   -0.0026   -0.0026   -0.0026   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027

  Columns 73 through 84

   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027

  Columns 85 through 96

   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027   -0.0027

  Columns 97 through 108

   -0.0027   -0.0027   -0.0027   -0.0027   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028

  Columns 109 through 120

   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028

  Columns 121 through 132

   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028   -0.0028

  Columns 133 through 144

   -0.0028   -0.0028   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029

  Columns 145 through 156

   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029

  Columns 157 through 168

   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0029   -0.0030   -0.0030

  Columns 169 through 180

   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030

  Columns 181 through 192

   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030

  Columns 193 through 204

   -0.0030   -0.0030   -0.0030   -0.0030   -0.0030   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031

  Columns 205 through 216

   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031

  Columns 217 through 228

   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0031   -0.0032   -0.0032

  Columns 229 through 240

   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032

  Columns 241 through 252

   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032   -0.0032

  Columns 253 through 264

   -0.0032   -0.0032   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033

  Columns 265 through 276

   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033   -0.0033

  Columns 277 through 288

   -0.0033   -0.0033   -0.0033   -0.0033   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034

  Columns 289 through 300

   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034

  Columns 301 through 312

   -0.0034   -0.0034   -0.0034   -0.0034   -0.0034   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035

  Columns 313 through 324

   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035

  Columns 325 through 336

   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0035   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036

  Columns 337 through 348

   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036

  Columns 349 through 360

   -0.0036   -0.0036   -0.0036   -0.0036   -0.0036   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037

  Columns 361 through 372

   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037   -0.0037

  Columns 373 through 384

   -0.0037   -0.0037   -0.0037   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038

  Columns 385 through 396

   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038   -0.0038

  Columns 397 through 408

   -0.0038   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039

  Columns 409 through 420

   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0039   -0.0040   -0.0040   -0.0040

  Columns 421 through 432

   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040

  Columns 433 through 444

   -0.0040   -0.0040   -0.0040   -0.0040   -0.0040   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041

  Columns 445 through 456

   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041   -0.0041

  Columns 457 through 468

   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042

  Columns 469 through 480

   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0042   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043

  Columns 481 through 492

   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043   -0.0043

  Columns 493 through 504

   -0.0043   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044

  Columns 505 through 516

   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044   -0.0044   -0.0045   -0.0045   -0.0045   -0.0045   -0.0045   -0.0045

  Columns 517 through 528

   -0.0045   -0.0045   -0.0045   -0.0045   -0.0045   -0.0045   -0.0045   -0.0045   -0.0045   -0.0045   -0.0046   -0.0046

  Columns 529 through 540

   -0.0046   -0.0046   -0.0046   -0.0046   -0.0046   -0.0046   -0.0046   -0.0046   -0.0046   -0.0046   -0.0046   -0.0046

  Columns 541 through 552

   -0.0046   -0.0046   -0.0046   -0.0047   -0.0047   -0.0047   -0.0047   -0.0047   -0.0047   -0.0047   -0.0047   -0.0047

  Columns 553 through 564

   -0.0047   -0.0047   -0.0047   -0.0047   -0.0047   -0.0047   -0.0048   -0.0048   -0.0048   -0.0048   -0.0048   -0.0048

  Columns 565 through 576

   -0.0048   -0.0048   -0.0048   -0.0048   -0.0048   -0.0048   -0.0048   -0.0048   -0.0048   -0.0049   -0.0049   -0.0049

  Columns 577 through 588

   -0.0049   -0.0049   -0.0049   -0.0049   -0.0049   -0.0049   -0.0049   -0.0049   -0.0049   -0.0049   -0.0049   -0.0049

  Columns 589 through 600

   -0.0050   -0.0050   -0.0050   -0.0050   -0.0050   -0.0050   -0.0050   -0.0050   -0.0050   -0.0050   -0.0050   -0.0050

  Columns 601 through 612

   -0.0050   -0.0050   -0.0051   -0.0051   -0.0051   -0.0051   -0.0051   -0.0051   -0.0051   -0.0051   -0.0051   -0.0051

  Columns 613 through 624

   -0.0051   -0.0051   -0.0051   -0.0051   -0.0052   -0.0052   -0.0052   -0.0052   -0.0052   -0.0052   -0.0052   -0.0052

  Columns 625 through 636

   -0.0052   -0.0052   -0.0052   -0.0052   -0.0052   -0.0053   -0.0053   -0.0053   -0.0053   -0.0053   -0.0053   -0.0053

  Columns 637 through 648

   -0.0053   -0.0053   -0.0053   -0.0053   -0.0053   -0.0053   -0.0053   -0.0054   -0.0054   -0.0054   -0.0054   -0.0054

  Columns 649 through 660

   -0.0054   -0.0054   -0.0054   -0.0054   -0.0054   -0.0054   -0.0054   -0.0055   -0.0055   -0.0055   -0.0055   -0.0055

  Columns 661 through 672

   -0.0055   -0.0055   -0.0055   -0.0055   -0.0055   -0.0055   -0.0055   -0.0055   -0.0056   -0.0056   -0.0056   -0.0056

  Columns 673 through 684

   -0.0056   -0.0056   -0.0056   -0.0056   -0.0056   -0.0056   -0.0056   -0.0056   -0.0057   -0.0057   -0.0057   -0.0057

  Columns 685 through 696

   -0.0057   -0.0057   -0.0057   -0.0057   -0.0057   -0.0057   -0.0057   -0.0058   -0.0058   -0.0058   -0.0058   -0.0058

  Columns 697 through 708

   -0.0058   -0.0058   -0.0058   -0.0058   -0.0058   -0.0058   -0.0058   -0.0059   -0.0059   -0.0059   -0.0059   -0.0059

  Columns 709 through 720

   -0.0059   -0.0059   -0.0059   -0.0059   -0.0059   -0.0059   -0.0060   -0.0060   -0.0060   -0.0060   -0.0060   -0.0060

  Columns 721 through 732

   -0.0060   -0.0060   -0.0060   -0.0060   -0.0060   -0.0061   -0.0061   -0.0061   -0.0061   -0.0061   -0.0061   -0.0061

  Columns 733 through 744

   -0.0061   -0.0061   -0.0061   -0.0062   -0.0062   -0.0062   -0.0062   -0.0062   -0.0062   -0.0062   -0.0062   -0.0062

  Columns 745 through 756

   -0.0062   -0.0062   -0.0063   -0.0063   -0.0063   -0.0063   -0.0063   -0.0063   -0.0063   -0.0063   -0.0063   -0.0063

  Columns 757 through 768

   -0.0064   -0.0064   -0.0064   -0.0064   -0.0064   -0.0064   -0.0064   -0.0064   -0.0064   -0.0065   -0.0065   -0.0065

  Columns 769 through 780

   -0.0065   -0.0065   -0.0065   -0.0065   -0.0065   -0.0065   -0.0065   -0.0066   -0.0066   -0.0066   -0.0066   -0.0066

  Columns 781 through 792

   -0.0066   -0.0066   -0.0066   -0.0066   -0.0067   -0.0067   -0.0067   -0.0067   -0.0067   -0.0067   -0.0067   -0.0067

  Columns 793 through 804

   -0.0067   -0.0067   -0.0068   -0.0068   -0.0068   -0.0068   -0.0068   -0.0068   -0.0068   -0.0068   -0.0068   -0.0069

  Columns 805 through 816

   -0.0069   -0.0069   -0.0069   -0.0069   -0.0069   -0.0069   -0.0069   -0.0070   -0.0070   -0.0070   -0.0070   -0.0070

  Columns 817 through 828

   -0.0070   -0.0070   -0.0070   -0.0070   -0.0071   -0.0071   -0.0071   -0.0071   -0.0071   -0.0071   -0.0071   -0.0071

  Columns 829 through 840

   -0.0071   -0.0072   -0.0072   -0.0072   -0.0072   -0.0072   -0.0072   -0.0072   -0.0072   -0.0073   -0.0073   -0.0073

  Columns 841 through 852

   -0.0073   -0.0073   -0.0073   -0.0073   -0.0073   -0.0074   -0.0074   -0.0074   -0.0074   -0.0074   -0.0074   -0.0074

  Columns 853 through 864

   -0.0074   -0.0075   -0.0075   -0.0075   -0.0075   -0.0075   -0.0075   -0.0075   -0.0075   -0.0076   -0.0076   -0.0076

  Columns 865 through 876

   -0.0076   -0.0076   -0.0076   -0.0076   -0.0077   -0.0077   -0.0077   -0.0077   -0.0077   -0.0077   -0.0077   -0.0077

  Columns 877 through 888

   -0.0078   -0.0078   -0.0078   -0.0078   -0.0078   -0.0078   -0.0078   -0.0079   -0.0079   -0.0079   -0.0079   -0.0079

  Columns 889 through 900

   -0.0079   -0.0079   -0.0080   -0.0080   -0.0080   -0.0080   -0.0080   -0.0080   -0.0080   -0.0081   -0.0081   -0.0081

  Columns 901 through 912

   -0.0081   -0.0081   -0.0081   -0.0081   -0.0082   -0.0082   -0.0082   -0.0082   -0.0082   -0.0082   -0.0082   -0.0083

  Columns 913 through 924

   -0.0083   -0.0083   -0.0083   -0.0083   -0.0083   -0.0083   -0.0084   -0.0084   -0.0084   -0.0084   -0.0084   -0.0084

  Columns 925 through 936

   -0.0085   -0.0085   -0.0085   -0.0085   -0.0085   -0.0085   -0.0085   -0.0086   -0.0086   -0.0086   -0.0086   -0.0086

  Columns 937 through 948

   -0.0086   -0.0087   -0.0087   -0.0087   -0.0087   -0.0087   -0.0087   -0.0088   -0.0088   -0.0088   -0.0088   -0.0088

  Columns 949 through 960

   -0.0088   -0.0089   -0.0089   -0.0089   -0.0089   -0.0089   -0.0089   -0.0090   -0.0090   -0.0090   -0.0090   -0.0090

  Columns 961 through 972

   -0.0090   -0.0091   -0.0091   -0.0091   -0.0091   -0.0091   -0.0091   -0.0092   -0.0092   -0.0092   -0.0092   -0.0092

  Columns 973 through 984

   -0.0092   -0.0093   -0.0093   -0.0093   -0.0093   -0.0093   -0.0093   -0.0094   -0.0094   -0.0094   -0.0094   -0.0094

  Columns 985 through 996

   -0.0095   -0.0095   -0.0095   -0.0095   -0.0095   -0.0095   -0.0096   -0.0096   -0.0096   -0.0096   -0.0096   -0.0097

  Columns 997 through 1008

   -0.0097   -0.0097   -0.0097   -0.0097   -0.0098   -0.0098   -0.0098   -0.0098   -0.0098   -0.0099   -0.0099   -0.0099

  Columns 1009 through 1020

   -0.0099   -0.0099   -0.0099   -0.0100   -0.0100   -0.0100   -0.0100   -0.0100   -0.0101   -0.0101   -0.0101   -0.0101

  Columns 1021 through 1032

   -0.0101   -0.0102   -0.0102   -0.0102   -0.0102   -0.0102   -0.0103   -0.0103   -0.0103   -0.0103   -0.0104   -0.0104

  Columns 1033 through 1044

   -0.0104   -0.0104   -0.0104   -0.0105   -0.0105   -0.0105   -0.0105   -0.0105   -0.0106   -0.0106   -0.0106   -0.0106

  Columns 1045 through 1056

   -0.0106   -0.0107   -0.0107   -0.0107   -0.0107   -0.0108   -0.0108   -0.0108   -0.0108   -0.0108   -0.0109   -0.0109

  Columns 1057 through 1068

   -0.0109   -0.0109   -0.0110   -0.0110   -0.0110   -0.0110   -0.0111   -0.0111   -0.0111   -0.0111   -0.0111   -0.0112

  Columns 1069 through 1080

   -0.0112   -0.0112   -0.0112   -0.0113   -0.0113   -0.0113   -0.0113   -0.0114   -0.0114   -0.0114   -0.0114   -0.0115

  Columns 1081 through 1092

   -0.0115   -0.0115   -0.0115   -0.0115   -0.0116   -0.0116   -0.0116   -0.0116   -0.0117   -0.0117   -0.0117   -0.0117

  Columns 1093 through 1104

   -0.0118   -0.0118   -0.0118   -0.0118   -0.0119   -0.0119   -0.0119   -0.0119   -0.0120   -0.0120   -0.0120   -0.0121

  Columns 1105 through 1116

   -0.0121   -0.0121   -0.0121   -0.0122   -0.0122   -0.0122   -0.0122   -0.0123   -0.0123   -0.0123   -0.0123   -0.0124

  Columns 1117 through 1128

   -0.0124   -0.0124   -0.0125   -0.0125   -0.0125   -0.0125   -0.0126   -0.0126   -0.0126   -0.0126   -0.0127   -0.0127

  Columns 1129 through 1140

   -0.0127   -0.0128   -0.0128   -0.0128   -0.0128   -0.0129   -0.0129   -0.0129   -0.0130   -0.0130   -0.0130   -0.0130

  Columns 1141 through 1152

   -0.0131   -0.0131   -0.0131   -0.0132   -0.0132   -0.0132   -0.0133   -0.0133   -0.0133   -0.0133   -0.0134   -0.0134

  Columns 1153 through 1164

   -0.0134   -0.0135   -0.0135   -0.0135   -0.0136   -0.0136   -0.0136   -0.0137   -0.0137   -0.0137   -0.0137   -0.0138

  Columns 1165 through 1176

   -0.0138   -0.0138   -0.0139   -0.0139   -0.0139   -0.0140   -0.0140   -0.0140   -0.0141   -0.0141   -0.0141   -0.0142

  Columns 1177 through 1188

   -0.0142   -0.0142   -0.0143   -0.0143   -0.0143   -0.0144   -0.0144   -0.0144   -0.0145   -0.0145   -0.0145   -0.0146

  Columns 1189 through 1200

   -0.0146   -0.0146   -0.0147   -0.0147   -0.0147   -0.0148   -0.0148   -0.0149   -0.0149   -0.0149   -0.0150   -0.0150

  Columns 1201 through 1212

   -0.0150   -0.0151   -0.0151   -0.0151   -0.0152   -0.0152   -0.0153   -0.0153   -0.0153   -0.0154   -0.0154   -0.0154

  Columns 1213 through 1224

   -0.0155   -0.0155   -0.0156   -0.0156   -0.0156   -0.0157   -0.0157   -0.0157   -0.0158   -0.0158   -0.0159   -0.0159

  Columns 1225 through 1236

   -0.0159   -0.0160   -0.0160   -0.0161   -0.0161   -0.0161   -0.0162   -0.0162   -0.0163   -0.0163   -0.0163   -0.0164

  Columns 1237 through 1248

   -0.0164   -0.0165   -0.0165   -0.0165   -0.0166   -0.0166   -0.0167   -0.0167   -0.0168   -0.0168   -0.0168   -0.0169

  Columns 1249 through 1260

   -0.0169   -0.0170   -0.0170   -0.0171   -0.0171   -0.0171   -0.0172   -0.0172   -0.0173   -0.0173   -0.0174   -0.0174

  Columns 1261 through 1272

   -0.0175   -0.0175   -0.0175   -0.0176   -0.0176   -0.0177   -0.0177   -0.0178   -0.0178   -0.0179   -0.0179   -0.0180

  Columns 1273 through 1284

   -0.0180   -0.0181   -0.0181   -0.0182   -0.0182   -0.0183   -0.0183   -0.0183   -0.0184   -0.0184   -0.0185   -0.0185

  Columns 1285 through 1296

   -0.0186   -0.0186   -0.0187   -0.0187   -0.0188   -0.0188   -0.0189   -0.0189   -0.0190   -0.0190   -0.0191   -0.0191

  Columns 1297 through 1308

   -0.0192   -0.0193   -0.0193   -0.0194   -0.0194   -0.0195   -0.0195   -0.0196   -0.0196   -0.0197   -0.0197   -0.0198

  Columns 1309 through 1320

   -0.0198   -0.0199   -0.0199   -0.0200   -0.0201   -0.0201   -0.0202   -0.0202   -0.0203   -0.0203   -0.0204   -0.0205

  Columns 1321 through 1332

   -0.0205   -0.0206   -0.0206   -0.0207   -0.0207   -0.0208   -0.0209   -0.0209   -0.0210   -0.0210   -0.0211   -0.0212

  Columns 1333 through 1344

   -0.0212   -0.0213   -0.0213   -0.0214   -0.0215   -0.0215   -0.0216   -0.0216   -0.0217   -0.0218   -0.0218   -0.0219

  Columns 1345 through 1356

   -0.0220   -0.0220   -0.0221   -0.0221   -0.0222   -0.0223   -0.0223   -0.0224   -0.0225   -0.0225   -0.0226   -0.0227

  Columns 1357 through 1368

   -0.0227   -0.0228   -0.0229   -0.0229   -0.0230   -0.0231   -0.0231   -0.0232   -0.0233   -0.0233   -0.0234   -0.0235

  Columns 1369 through 1380

   -0.0235   -0.0236   -0.0237   -0.0238   -0.0238   -0.0239   -0.0240   -0.0240   -0.0241   -0.0242   -0.0243   -0.0243

  Columns 1381 through 1392

   -0.0244   -0.0245   -0.0246   -0.0246   -0.0247   -0.0248   -0.0249   -0.0249   -0.0250   -0.0251   -0.0252   -0.0252

  Columns 1393 through 1404

   -0.0253   -0.0254   -0.0255   -0.0256   -0.0256   -0.0257   -0.0258   -0.0259   -0.0260   -0.0260   -0.0261   -0.0262

  Columns 1405 through 1416

   -0.0263   -0.0264   -0.0264   -0.0265   -0.0266   -0.0267   -0.0268   -0.0269   -0.0270   -0.0270   -0.0271   -0.0272

  Columns 1417 through 1428

   -0.0273   -0.0274   -0.0275   -0.0276   -0.0277   -0.0277   -0.0278   -0.0279   -0.0280   -0.0281   -0.0282   -0.0283

  Columns 1429 through 1440

   -0.0284   -0.0285   -0.0286   -0.0287   -0.0287   -0.0288   -0.0289   -0.0290   -0.0291   -0.0292   -0.0293   -0.0294

  Columns 1441 through 1452

   -0.0295   -0.0296   -0.0297   -0.0298   -0.0299   -0.0300   -0.0301   -0.0302   -0.0303   -0.0304   -0.0305   -0.0306

  Columns 1453 through 1464

   -0.0307   -0.0308   -0.0309   -0.0310   -0.0311   -0.0312   -0.0313   -0.0314   -0.0316   -0.0317   -0.0318   -0.0319

  Columns 1465 through 1476

   -0.0320   -0.0321   -0.0322   -0.0323   -0.0324   -0.0325   -0.0327   -0.0328   -0.0329   -0.0330   -0.0331   -0.0332

  Columns 1477 through 1488

   -0.0333   -0.0335   -0.0336   -0.0337   -0.0338   -0.0339   -0.0341   -0.0342   -0.0343   -0.0344   -0.0345   -0.0347

  Columns 1489 through 1500

   -0.0348   -0.0349   -0.0350   -0.0352   -0.0353   -0.0354   -0.0355   -0.0357   -0.0358   -0.0359   -0.0361   -0.0362

  Columns 1501 through 1512

   -0.0363   -0.0364   -0.0366   -0.0367   -0.0369   -0.0370   -0.0371   -0.0373   -0.0374   -0.0375   -0.0377   -0.0378

  Columns 1513 through 1524

   -0.0379   -0.0381   -0.0382   -0.0384   -0.0385   -0.0387   -0.0388   -0.0390   -0.0391   -0.0392   -0.0394   -0.0395

  Columns 1525 through 1536

   -0.0397   -0.0398   -0.0400   -0.0401   -0.0403   -0.0404   -0.0406   -0.0408   -0.0409   -0.0411   -0.0412   -0.0414

  Columns 1537 through 1548

   -0.0415   -0.0417   -0.0419   -0.0420   -0.0422   -0.0424   -0.0425   -0.0427   -0.0429   -0.0430   -0.0432   -0.0434

  Columns 1549 through 1560

   -0.0435   -0.0437   -0.0439   -0.0440   -0.0442   -0.0444   -0.0446   -0.0448   -0.0449   -0.0451   -0.0453   -0.0455

  Columns 1561 through 1572

   -0.0457   -0.0458   -0.0460   -0.0462   -0.0464   -0.0466   -0.0468   -0.0470   -0.0472   -0.0473   -0.0475   -0.0477

  Columns 1573 through 1584

   -0.0479   -0.0481   -0.0483   -0.0485   -0.0487   -0.0489   -0.0491   -0.0493   -0.0495   -0.0497   -0.0499   -0.0502

  Columns 1585 through 1596

   -0.0504   -0.0506   -0.0508   -0.0510   -0.0512   -0.0514   -0.0516   -0.0519   -0.0521   -0.0523   -0.0525   -0.0528

  Columns 1597 through 1608

   -0.0530   -0.0532   -0.0534   -0.0537   -0.0539   -0.0541   -0.0544   -0.0546   -0.0548   -0.0551   -0.0553   -0.0556

  Columns 1609 through 1620

   -0.0558   -0.0560   -0.0563   -0.0565   -0.0568   -0.0570   -0.0573   -0.0575   -0.0578   -0.0580   -0.0583   -0.0586

  Columns 1621 through 1632

   -0.0588   -0.0591   -0.0594   -0.0596   -0.0599   -0.0602   -0.0604   -0.0607   -0.0610   -0.0612   -0.0615   -0.0618

  Columns 1633 through 1644

   -0.0621   -0.0624   -0.0627   -0.0629   -0.0632   -0.0635   -0.0638   -0.0641   -0.0644   -0.0647   -0.0650   -0.0653

  Columns 1645 through 1656

   -0.0656   -0.0659   -0.0662   -0.0665   -0.0668   -0.0672   -0.0675   -0.0678   -0.0681   -0.0684   -0.0688   -0.0691

  Columns 1657 through 1668

   -0.0694   -0.0697   -0.0701   -0.0704   -0.0707   -0.0711   -0.0714   -0.0718   -0.0721   -0.0725   -0.0728   -0.0732

  Columns 1669 through 1680

   -0.0735   -0.0739   -0.0742   -0.0746   -0.0750   -0.0753   -0.0757   -0.0761   -0.0765   -0.0768   -0.0772   -0.0776

  Columns 1681 through 1692

   -0.0780   -0.0784   -0.0788   -0.0792   -0.0795   -0.0799   -0.0803   -0.0807   -0.0812   -0.0816   -0.0820   -0.0824

  Columns 1693 through 1704

   -0.0828   -0.0832   -0.0836   -0.0841   -0.0845   -0.0849   -0.0854   -0.0858   -0.0862   -0.0867   -0.0871   -0.0876

  Columns 1705 through 1716

   -0.0880   -0.0885   -0.0889   -0.0894   -0.0899   -0.0903   -0.0908   -0.0913   -0.0918   -0.0922   -0.0927   -0.0932

  Columns 1717 through 1728

   -0.0937   -0.0942   -0.0947   -0.0952   -0.0957   -0.0962   -0.0967   -0.0972   -0.0978   -0.0983   -0.0988   -0.0993

  Columns 1729 through 1740

   -0.0999   -0.1004   -0.1009   -0.1015   -0.1020   -0.1026   -0.1031   -0.1037   -0.1043   -0.1048   -0.1054   -0.1060

  Columns 1741 through 1752

   -0.1065   -0.1071   -0.1077   -0.1083   -0.1089   -0.1095   -0.1101   -0.1107   -0.1113   -0.1119   -0.1125   -0.1132

  Columns 1753 through 1764

   -0.1138   -0.1144   -0.1151   -0.1157   -0.1163   -0.1170   -0.1176   -0.1183   -0.1190   -0.1196   -0.1203   -0.1210

  Columns 1765 through 1776

   -0.1216   -0.1223   -0.1230   -0.1237   -0.1244   -0.1251   -0.1258   -0.1265   -0.1272   -0.1279   -0.1287   -0.1294

  Columns 1777 through 1788

   -0.1301   -0.1309   -0.1316   -0.1323   -0.1331   -0.1338   -0.1346   -0.1354   -0.1361   -0.1369   -0.1377   -0.1385

  Columns 1789 through 1800

   -0.1393   -0.1401   -0.1409   -0.1417   -0.1425   -0.1433   -0.1441   -0.1449   -0.1457   -0.1466   -0.1474   -0.1482

  Columns 1801 through 1812

   -0.1491   -0.1499   -0.1508   -0.1516   -0.1525   -0.1534   -0.1542   -0.1551   -0.1560   -0.1569   -0.1577   -0.1586

  Columns 1813 through 1824

   -0.1595   -0.1604   -0.1613   -0.1622   -0.1631   -0.1641   -0.1650   -0.1659   -0.1668   -0.1678   -0.1687   -0.1696

  Columns 1825 through 1836

   -0.1706   -0.1715   -0.1725   -0.1734   -0.1744   -0.1753   -0.1763   -0.1772   -0.1782   -0.1792   -0.1801   -0.1811

  Columns 1837 through 1848

   -0.1821   -0.1830   -0.1840   -0.1850   -0.1860   -0.1869   -0.1879   -0.1889   -0.1899   -0.1909   -0.1919   -0.1928

  Columns 1849 through 1860

   -0.1938   -0.1948   -0.1958   -0.1968   -0.1977   -0.1987   -0.1997   -0.2007   -0.2016   -0.2026   -0.2036   -0.2045

  Columns 1861 through 1872

   -0.2055   -0.2064   -0.2074   -0.2083   -0.2093   -0.2102   -0.2111   -0.2121   -0.2130   -0.2139   -0.2148   -0.2157

  Columns 1873 through 1884

   -0.2166   -0.2175   -0.2183   -0.2192   -0.2200   -0.2209   -0.2217   -0.2225   -0.2233   -0.2241   -0.2249   -0.2256

  Columns 1885 through 1896

   -0.2264   -0.2271   -0.2278   -0.2285   -0.2292   -0.2299   -0.2305   -0.2311   -0.2317   -0.2323   -0.2329   -0.2334

  Columns 1897 through 1908

   -0.2339   -0.2344   -0.2349   -0.2353   -0.2357   -0.2361   -0.2364   -0.2367   -0.2370   -0.2373   -0.2375   -0.2377

  Columns 1909 through 1920

   -0.2379   -0.2380   -0.2381   -0.2381   -0.2381   -0.2381   -0.2380   -0.2379   -0.2377   -0.2375   -0.2373   -0.2370

  Columns 1921 through 1932

   -0.2366   -0.2362   -0.2358   -0.2353   -0.2347   -0.2341   -0.2335   -0.2328   -0.2320   -0.2312   -0.2303   -0.2294

  Columns 1933 through 1944

   -0.2284   -0.2273   -0.2262   -0.2250   -0.2237   -0.2224   -0.2210   -0.2195   -0.2180   -0.2164   -0.2147   -0.2130

  Columns 1945 through 1956

   -0.2112   -0.2093   -0.2073   -0.2053   -0.2032   -0.2010   -0.1988   -0.1964   -0.1940   -0.1915   -0.1890   -0.1863

  Columns 1957 through 1968

   -0.1836   -0.1808   -0.1779   -0.1750   -0.1719   -0.1688   -0.1656   -0.1624   -0.1591   -0.1556   -0.1522   -0.1486

  Columns 1969 through 1980

   -0.1450   -0.1413   -0.1375   -0.1336   -0.1297   -0.1257   -0.1217   -0.1176   -0.1134   -0.1092   -0.1049   -0.1005

  Columns 1981 through 1992

   -0.0961   -0.0917   -0.0872   -0.0826   -0.0780   -0.0733   -0.0687   -0.0639   -0.0591   -0.0543   -0.0495   -0.0446

  Columns 1993 through 2004

   -0.0397   -0.0348   -0.0299   -0.0249   -0.0200   -0.0150   -0.0100   -0.0050         0    0.0050    0.0100    0.0150

  Columns 2005 through 2016

    0.0200    0.0249    0.0299    0.0348    0.0397    0.0446    0.0495    0.0543    0.0591    0.0639    0.0687    0.0733

  Columns 2017 through 2028

    0.0780    0.0826    0.0872    0.0917    0.0961    0.1005    0.1049    0.1092    0.1134    0.1176    0.1217    0.1257

  Columns 2029 through 2040

    0.1297    0.1336    0.1375    0.1413    0.1450    0.1486    0.1522    0.1556    0.1591    0.1624    0.1656    0.1688

  Columns 2041 through 2052

    0.1719    0.1750    0.1779    0.1808    0.1836    0.1863    0.1890    0.1915    0.1940    0.1964    0.1988    0.2010

  Columns 2053 through 2064

    0.2032    0.2053    0.2073    0.2093    0.2112    0.2130    0.2147    0.2164    0.2180    0.2195    0.2210    0.2224

  Columns 2065 through 2076

    0.2237    0.2250    0.2262    0.2273    0.2284    0.2294    0.2303    0.2312    0.2320    0.2328    0.2335    0.2341

  Columns 2077 through 2088

    0.2347    0.2353    0.2358    0.2362    0.2366    0.2370    0.2373    0.2375    0.2377    0.2379    0.2380    0.2381

  Columns 2089 through 2100

    0.2381    0.2381    0.2381    0.2380    0.2379    0.2377    0.2375    0.2373    0.2370    0.2367    0.2364    0.2361

  Columns 2101 through 2112

    0.2357    0.2353    0.2349    0.2344    0.2339    0.2334    0.2329    0.2323    0.2317    0.2311    0.2305    0.2299

  Columns 2113 through 2124

    0.2292    0.2285    0.2278    0.2271    0.2264    0.2256    0.2249    0.2241    0.2233    0.2225    0.2217    0.2209

  Columns 2125 through 2136

    0.2200    0.2192    0.2183    0.2175    0.2166    0.2157    0.2148    0.2139    0.2130    0.2121    0.2111    0.2102

  Columns 2137 through 2148

    0.2093    0.2083    0.2074    0.2064    0.2055    0.2045    0.2036    0.2026    0.2016    0.2007    0.1997    0.1987

  Columns 2149 through 2160

    0.1977    0.1968    0.1958    0.1948    0.1938    0.1928    0.1919    0.1909    0.1899    0.1889    0.1879    0.1869

  Columns 2161 through 2172

    0.1860    0.1850    0.1840    0.1830    0.1821    0.1811    0.1801    0.1792    0.1782    0.1772    0.1763    0.1753

  Columns 2173 through 2184

    0.1744    0.1734    0.1725    0.1715    0.1706    0.1696    0.1687    0.1678    0.1668    0.1659    0.1650    0.1641

  Columns 2185 through 2196

    0.1631    0.1622    0.1613    0.1604    0.1595    0.1586    0.1577    0.1569    0.1560    0.1551    0.1542    0.1534

  Columns 2197 through 2208

    0.1525    0.1516    0.1508    0.1499    0.1491    0.1482    0.1474    0.1466    0.1457    0.1449    0.1441    0.1433

  Columns 2209 through 2220

    0.1425    0.1417    0.1409    0.1401    0.1393    0.1385    0.1377    0.1369    0.1361    0.1354    0.1346    0.1338

  Columns 2221 through 2232

    0.1331    0.1323    0.1316    0.1309    0.1301    0.1294    0.1287    0.1279    0.1272    0.1265    0.1258    0.1251

  Columns 2233 through 2244

    0.1244    0.1237    0.1230    0.1223    0.1216    0.1210    0.1203    0.1196    0.1190    0.1183    0.1176    0.1170

  Columns 2245 through 2256

    0.1163    0.1157    0.1151    0.1144    0.1138    0.1132    0.1125    0.1119    0.1113    0.1107    0.1101    0.1095

  Columns 2257 through 2268

    0.1089    0.1083    0.1077    0.1071    0.1065    0.1060    0.1054    0.1048    0.1043    0.1037    0.1031    0.1026

  Columns 2269 through 2280

    0.1020    0.1015    0.1009    0.1004    0.0999    0.0993    0.0988    0.0983    0.0978    0.0972    0.0967    0.0962

  Columns 2281 through 2292

    0.0957    0.0952    0.0947    0.0942    0.0937    0.0932    0.0927    0.0922    0.0918    0.0913    0.0908    0.0903

  Columns 2293 through 2304

    0.0899    0.0894    0.0889    0.0885    0.0880    0.0876    0.0871    0.0867    0.0862    0.0858    0.0854    0.0849

  Columns 2305 through 2316

    0.0845    0.0841    0.0836    0.0832    0.0828    0.0824    0.0820    0.0816    0.0812    0.0807    0.0803    0.0799

  Columns 2317 through 2328

    0.0795    0.0792    0.0788    0.0784    0.0780    0.0776    0.0772    0.0768    0.0765    0.0761    0.0757    0.0753

  Columns 2329 through 2340

    0.0750    0.0746    0.0742    0.0739    0.0735    0.0732    0.0728    0.0725    0.0721    0.0718    0.0714    0.0711

  Columns 2341 through 2352

    0.0707    0.0704    0.0701    0.0697    0.0694    0.0691    0.0688    0.0684    0.0681    0.0678    0.0675    0.0672

  Columns 2353 through 2364

    0.0668    0.0665    0.0662    0.0659    0.0656    0.0653    0.0650    0.0647    0.0644    0.0641    0.0638    0.0635

  Columns 2365 through 2376

    0.0632    0.0629    0.0627    0.0624    0.0621    0.0618    0.0615    0.0612    0.0610    0.0607    0.0604    0.0602

  Columns 2377 through 2388

    0.0599    0.0596    0.0594    0.0591    0.0588    0.0586    0.0583    0.0580    0.0578    0.0575    0.0573    0.0570

  Columns 2389 through 2400

    0.0568    0.0565    0.0563    0.0560    0.0558    0.0556    0.0553    0.0551    0.0548    0.0546    0.0544    0.0541

  Columns 2401 through 2412

    0.0539    0.0537    0.0534    0.0532    0.0530    0.0528    0.0525    0.0523    0.0521    0.0519    0.0516    0.0514

  Columns 2413 through 2424

    0.0512    0.0510    0.0508    0.0506    0.0504    0.0502    0.0499    0.0497    0.0495    0.0493    0.0491    0.0489

  Columns 2425 through 2436

    0.0487    0.0485    0.0483    0.0481    0.0479    0.0477    0.0475    0.0473    0.0472    0.0470    0.0468    0.0466

  Columns 2437 through 2448

    0.0464    0.0462    0.0460    0.0458    0.0457    0.0455    0.0453    0.0451    0.0449    0.0448    0.0446    0.0444

  Columns 2449 through 2460

    0.0442    0.0440    0.0439    0.0437    0.0435    0.0434    0.0432    0.0430    0.0429    0.0427    0.0425    0.0424

  Columns 2461 through 2472

    0.0422    0.0420    0.0419    0.0417    0.0415    0.0414    0.0412    0.0411    0.0409    0.0408    0.0406    0.0404

  Columns 2473 through 2484

    0.0403    0.0401    0.0400    0.0398    0.0397    0.0395    0.0394    0.0392    0.0391    0.0390    0.0388    0.0387

  Columns 2485 through 2496

    0.0385    0.0384    0.0382    0.0381    0.0379    0.0378    0.0377    0.0375    0.0374    0.0373    0.0371    0.0370

  Columns 2497 through 2508

    0.0369    0.0367    0.0366    0.0364    0.0363    0.0362    0.0361    0.0359    0.0358    0.0357    0.0355    0.0354

  Columns 2509 through 2520

    0.0353    0.0352    0.0350    0.0349    0.0348    0.0347    0.0345    0.0344    0.0343    0.0342    0.0341    0.0339

  Columns 2521 through 2532

    0.0338    0.0337    0.0336    0.0335    0.0333    0.0332    0.0331    0.0330    0.0329    0.0328    0.0327    0.0325

  Columns 2533 through 2544

    0.0324    0.0323    0.0322    0.0321    0.0320    0.0319    0.0318    0.0317    0.0316    0.0314    0.0313    0.0312

  Columns 2545 through 2556

    0.0311    0.0310    0.0309    0.0308    0.0307    0.0306    0.0305    0.0304    0.0303    0.0302    0.0301    0.0300

  Columns 2557 through 2568

    0.0299    0.0298    0.0297    0.0296    0.0295    0.0294    0.0293    0.0292    0.0291    0.0290    0.0289    0.0288

  Columns 2569 through 2580

    0.0287    0.0287    0.0286    0.0285    0.0284    0.0283    0.0282    0.0281    0.0280    0.0279    0.0278    0.0277

  Columns 2581 through 2592

    0.0277    0.0276    0.0275    0.0274    0.0273    0.0272    0.0271    0.0270    0.0270    0.0269    0.0268    0.0267

  Columns 2593 through 2604

    0.0266    0.0265    0.0264    0.0264    0.0263    0.0262    0.0261    0.0260    0.0260    0.0259    0.0258    0.0257

  Columns 2605 through 2616

    0.0256    0.0256    0.0255    0.0254    0.0253    0.0252    0.0252    0.0251    0.0250    0.0249    0.0249    0.0248

  Columns 2617 through 2628

    0.0247    0.0246    0.0246    0.0245    0.0244    0.0243    0.0243    0.0242    0.0241    0.0240    0.0240    0.0239

  Columns 2629 through 2640

    0.0238    0.0238    0.0237    0.0236    0.0235    0.0235    0.0234    0.0233    0.0233    0.0232    0.0231    0.0231

  Columns 2641 through 2652

    0.0230    0.0229    0.0229    0.0228    0.0227    0.0227    0.0226    0.0225    0.0225    0.0224    0.0223    0.0223

  Columns 2653 through 2664

    0.0222    0.0221    0.0221    0.0220    0.0220    0.0219    0.0218    0.0218    0.0217    0.0216    0.0216    0.0215

  Columns 2665 through 2676

    0.0215    0.0214    0.0213    0.0213    0.0212    0.0212    0.0211    0.0210    0.0210    0.0209    0.0209    0.0208

  Columns 2677 through 2688

    0.0207    0.0207    0.0206    0.0206    0.0205    0.0205    0.0204    0.0203    0.0203    0.0202    0.0202    0.0201

  Columns 2689 through 2700

    0.0201    0.0200    0.0199    0.0199    0.0198    0.0198    0.0197    0.0197    0.0196    0.0196    0.0195    0.0195

  Columns 2701 through 2712

    0.0194    0.0194    0.0193    0.0193    0.0192    0.0191    0.0191    0.0190    0.0190    0.0189    0.0189    0.0188

  Columns 2713 through 2724

    0.0188    0.0187    0.0187    0.0186    0.0186    0.0185    0.0185    0.0184    0.0184    0.0183    0.0183    0.0183

  Columns 2725 through 2736

    0.0182    0.0182    0.0181    0.0181    0.0180    0.0180    0.0179    0.0179    0.0178    0.0178    0.0177    0.0177

  Columns 2737 through 2748

    0.0176    0.0176    0.0175    0.0175    0.0175    0.0174    0.0174    0.0173    0.0173    0.0172    0.0172    0.0171

  Columns 2749 through 2760

    0.0171    0.0171    0.0170    0.0170    0.0169    0.0169    0.0168    0.0168    0.0168    0.0167    0.0167    0.0166

  Columns 2761 through 2772

    0.0166    0.0165    0.0165    0.0165    0.0164    0.0164    0.0163    0.0163    0.0163    0.0162    0.0162    0.0161

  Columns 2773 through 2784

    0.0161    0.0161    0.0160    0.0160    0.0159    0.0159    0.0159    0.0158    0.0158    0.0157    0.0157    0.0157

  Columns 2785 through 2796

    0.0156    0.0156    0.0156    0.0155    0.0155    0.0154    0.0154    0.0154    0.0153    0.0153    0.0153    0.0152

  Columns 2797 through 2808

    0.0152    0.0151    0.0151    0.0151    0.0150    0.0150    0.0150    0.0149    0.0149    0.0149    0.0148    0.0148

  Columns 2809 through 2820

    0.0147    0.0147    0.0147    0.0146    0.0146    0.0146    0.0145    0.0145    0.0145    0.0144    0.0144    0.0144

  Columns 2821 through 2832

    0.0143    0.0143    0.0143    0.0142    0.0142    0.0142    0.0141    0.0141    0.0141    0.0140    0.0140    0.0140

  Columns 2833 through 2844

    0.0139    0.0139    0.0139    0.0138    0.0138    0.0138    0.0137    0.0137    0.0137    0.0137    0.0136    0.0136

  Columns 2845 through 2856

    0.0136    0.0135    0.0135    0.0135    0.0134    0.0134    0.0134    0.0133    0.0133    0.0133    0.0133    0.0132

  Columns 2857 through 2868

    0.0132    0.0132    0.0131    0.0131    0.0131    0.0130    0.0130    0.0130    0.0130    0.0129    0.0129    0.0129

  Columns 2869 through 2880

    0.0128    0.0128    0.0128    0.0128    0.0127    0.0127    0.0127    0.0126    0.0126    0.0126    0.0126    0.0125

  Columns 2881 through 2892

    0.0125    0.0125    0.0125    0.0124    0.0124    0.0124    0.0123    0.0123    0.0123    0.0123    0.0122    0.0122

  Columns 2893 through 2904

    0.0122    0.0122    0.0121    0.0121    0.0121    0.0121    0.0120    0.0120    0.0120    0.0119    0.0119    0.0119

  Columns 2905 through 2916

    0.0119    0.0118    0.0118    0.0118    0.0118    0.0117    0.0117    0.0117    0.0117    0.0116    0.0116    0.0116

  Columns 2917 through 2928

    0.0116    0.0115    0.0115    0.0115    0.0115    0.0115    0.0114    0.0114    0.0114    0.0114    0.0113    0.0113

  Columns 2929 through 2940

    0.0113    0.0113    0.0112    0.0112    0.0112    0.0112    0.0111    0.0111    0.0111    0.0111    0.0111    0.0110

  Columns 2941 through 2952

    0.0110    0.0110    0.0110    0.0109    0.0109    0.0109    0.0109    0.0108    0.0108    0.0108    0.0108    0.0108

  Columns 2953 through 2964

    0.0107    0.0107    0.0107    0.0107    0.0106    0.0106    0.0106    0.0106    0.0106    0.0105    0.0105    0.0105

  Columns 2965 through 2976

    0.0105    0.0105    0.0104    0.0104    0.0104    0.0104    0.0104    0.0103    0.0103    0.0103    0.0103    0.0102

  Columns 2977 through 2988

    0.0102    0.0102    0.0102    0.0102    0.0101    0.0101    0.0101    0.0101    0.0101    0.0100    0.0100    0.0100

  Columns 2989 through 3000

    0.0100    0.0100    0.0099    0.0099    0.0099    0.0099    0.0099    0.0099    0.0098    0.0098    0.0098    0.0098

  Columns 3001 through 3012

    0.0098    0.0097    0.0097    0.0097    0.0097    0.0097    0.0096    0.0096    0.0096    0.0096    0.0096    0.0095

  Columns 3013 through 3024

    0.0095    0.0095    0.0095    0.0095    0.0095    0.0094    0.0094    0.0094    0.0094    0.0094    0.0093    0.0093

  Columns 3025 through 3036

    0.0093    0.0093    0.0093    0.0093    0.0092    0.0092    0.0092    0.0092    0.0092    0.0092    0.0091    0.0091

  Columns 3037 through 3048

    0.0091    0.0091    0.0091    0.0091    0.0090    0.0090    0.0090    0.0090    0.0090    0.0090    0.0089    0.0089

  Columns 3049 through 3060

    0.0089    0.0089    0.0089    0.0089    0.0088    0.0088    0.0088    0.0088    0.0088    0.0088    0.0087    0.0087

  Columns 3061 through 3072

    0.0087    0.0087    0.0087    0.0087    0.0086    0.0086    0.0086    0.0086    0.0086    0.0086    0.0085    0.0085

  Columns 3073 through 3084

    0.0085    0.0085    0.0085    0.0085    0.0085    0.0084    0.0084    0.0084    0.0084    0.0084    0.0084    0.0083

  Columns 3085 through 3096

    0.0083    0.0083    0.0083    0.0083    0.0083    0.0083    0.0082    0.0082    0.0082    0.0082    0.0082    0.0082

  Columns 3097 through 3108

    0.0082    0.0081    0.0081    0.0081    0.0081    0.0081    0.0081    0.0081    0.0080    0.0080    0.0080    0.0080

  Columns 3109 through 3120

    0.0080    0.0080    0.0080    0.0079    0.0079    0.0079    0.0079    0.0079    0.0079    0.0079    0.0078    0.0078

  Columns 3121 through 3132

    0.0078    0.0078    0.0078    0.0078    0.0078    0.0077    0.0077    0.0077    0.0077    0.0077    0.0077    0.0077

  Columns 3133 through 3144

    0.0077    0.0076    0.0076    0.0076    0.0076    0.0076    0.0076    0.0076    0.0075    0.0075    0.0075    0.0075

  Columns 3145 through 3156

    0.0075    0.0075    0.0075    0.0075    0.0074    0.0074    0.0074    0.0074    0.0074    0.0074    0.0074    0.0074

  Columns 3157 through 3168

    0.0073    0.0073    0.0073    0.0073    0.0073    0.0073    0.0073    0.0073    0.0072    0.0072    0.0072    0.0072

  Columns 3169 through 3180

    0.0072    0.0072    0.0072    0.0072    0.0071    0.0071    0.0071    0.0071    0.0071    0.0071    0.0071    0.0071

  Columns 3181 through 3192

    0.0071    0.0070    0.0070    0.0070    0.0070    0.0070    0.0070    0.0070    0.0070    0.0070    0.0069    0.0069

  Columns 3193 through 3204

    0.0069    0.0069    0.0069    0.0069    0.0069    0.0069    0.0068    0.0068    0.0068    0.0068    0.0068    0.0068

  Columns 3205 through 3216

    0.0068    0.0068    0.0068    0.0067    0.0067    0.0067    0.0067    0.0067    0.0067    0.0067    0.0067    0.0067

  Columns 3217 through 3228

    0.0067    0.0066    0.0066    0.0066    0.0066    0.0066    0.0066    0.0066    0.0066    0.0066    0.0065    0.0065

  Columns 3229 through 3240

    0.0065    0.0065    0.0065    0.0065    0.0065    0.0065    0.0065    0.0065    0.0064    0.0064    0.0064    0.0064

  Columns 3241 through 3252

    0.0064    0.0064    0.0064    0.0064    0.0064    0.0063    0.0063    0.0063    0.0063    0.0063    0.0063    0.0063

  Columns 3253 through 3264

    0.0063    0.0063    0.0063    0.0062    0.0062    0.0062    0.0062    0.0062    0.0062    0.0062    0.0062    0.0062

  Columns 3265 through 3276

    0.0062    0.0062    0.0061    0.0061    0.0061    0.0061    0.0061    0.0061    0.0061    0.0061    0.0061    0.0061

  Columns 3277 through 3288

    0.0060    0.0060    0.0060    0.0060    0.0060    0.0060    0.0060    0.0060    0.0060    0.0060    0.0060    0.0059

  Columns 3289 through 3300

    0.0059    0.0059    0.0059    0.0059    0.0059    0.0059    0.0059    0.0059    0.0059    0.0059    0.0058    0.0058

  Columns 3301 through 3312

    0.0058    0.0058    0.0058    0.0058    0.0058    0.0058    0.0058    0.0058    0.0058    0.0058    0.0057    0.0057

  Columns 3313 through 3324

    0.0057    0.0057    0.0057    0.0057    0.0057    0.0057    0.0057    0.0057    0.0057    0.0056    0.0056    0.0056

  Columns 3325 through 3336

    0.0056    0.0056    0.0056    0.0056    0.0056    0.0056    0.0056    0.0056    0.0056    0.0055    0.0055    0.0055

  Columns 3337 through 3348

    0.0055    0.0055    0.0055    0.0055    0.0055    0.0055    0.0055    0.0055    0.0055    0.0055    0.0054    0.0054

  Columns 3349 through 3360

    0.0054    0.0054    0.0054    0.0054    0.0054    0.0054    0.0054    0.0054    0.0054    0.0054    0.0053    0.0053

  Columns 3361 through 3372

    0.0053    0.0053    0.0053    0.0053    0.0053    0.0053    0.0053    0.0053    0.0053    0.0053    0.0053    0.0053

  Columns 3373 through 3384

    0.0052    0.0052    0.0052    0.0052    0.0052    0.0052    0.0052    0.0052    0.0052    0.0052    0.0052    0.0052

  Columns 3385 through 3396

    0.0052    0.0051    0.0051    0.0051    0.0051    0.0051    0.0051    0.0051    0.0051    0.0051    0.0051    0.0051

  Columns 3397 through 3408

    0.0051    0.0051    0.0051    0.0050    0.0050    0.0050    0.0050    0.0050    0.0050    0.0050    0.0050    0.0050

  Columns 3409 through 3420

    0.0050    0.0050    0.0050    0.0050    0.0050    0.0049    0.0049    0.0049    0.0049    0.0049    0.0049    0.0049

  Columns 3421 through 3432

    0.0049    0.0049    0.0049    0.0049    0.0049    0.0049    0.0049    0.0049    0.0048    0.0048    0.0048    0.0048

  Columns 3433 through 3444

    0.0048    0.0048    0.0048    0.0048    0.0048    0.0048    0.0048    0.0048    0.0048    0.0048    0.0048    0.0047

  Columns 3445 through 3456

    0.0047    0.0047    0.0047    0.0047    0.0047    0.0047    0.0047    0.0047    0.0047    0.0047    0.0047    0.0047

  Columns 3457 through 3468

    0.0047    0.0047    0.0046    0.0046    0.0046    0.0046    0.0046    0.0046    0.0046    0.0046    0.0046    0.0046

  Columns 3469 through 3480

    0.0046    0.0046    0.0046    0.0046    0.0046    0.0046    0.0046    0.0045    0.0045    0.0045    0.0045    0.0045

  Columns 3481 through 3492

    0.0045    0.0045    0.0045    0.0045    0.0045    0.0045    0.0045    0.0045    0.0045    0.0045    0.0045    0.0044

  Columns 3493 through 3504

    0.0044    0.0044    0.0044    0.0044    0.0044    0.0044    0.0044    0.0044    0.0044    0.0044    0.0044    0.0044

  Columns 3505 through 3516

    0.0044    0.0044    0.0044    0.0044    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043

  Columns 3517 through 3528

    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0042    0.0042

  Columns 3529 through 3540

    0.0042    0.0042    0.0042    0.0042    0.0042    0.0042    0.0042    0.0042    0.0042    0.0042    0.0042    0.0042

  Columns 3541 through 3552

    0.0042    0.0042    0.0042    0.0042    0.0042    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041

  Columns 3553 through 3564

    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041    0.0041

  Columns 3565 through 3576

    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040

  Columns 3577 through 3588

    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0039    0.0039    0.0039    0.0039

  Columns 3589 through 3600

    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039

  Columns 3601 through 3612

    0.0039    0.0039    0.0039    0.0039    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038

  Columns 3613 through 3624

    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038

  Columns 3625 through 3636

    0.0038    0.0038    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037

  Columns 3637 through 3648

    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037    0.0037

  Columns 3649 through 3660

    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036

  Columns 3661 through 3672

    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0036    0.0035

  Columns 3673 through 3684

    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035

  Columns 3685 through 3696

    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035

  Columns 3697 through 3708

    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034

  Columns 3709 through 3720

    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034    0.0034

  Columns 3721 through 3732

    0.0034    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033

  Columns 3733 through 3744

    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033    0.0033

  Columns 3745 through 3756

    0.0033    0.0033    0.0033    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032

  Columns 3757 through 3768

    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032

  Columns 3769 through 3780

    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0032    0.0031    0.0031    0.0031    0.0031    0.0031

  Columns 3781 through 3792

    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031

  Columns 3793 through 3804

    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031    0.0031

  Columns 3805 through 3816

    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030

  Columns 3817 through 3828

    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030

  Columns 3829 through 3840

    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0030    0.0029    0.0029    0.0029    0.0029    0.0029

  Columns 3841 through 3852

    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029

  Columns 3853 through 3864

    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029    0.0029

  Columns 3865 through 3876

    0.0029    0.0029    0.0029    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028

  Columns 3877 through 3888

    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028

  Columns 3889 through 3900

    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028    0.0028

  Columns 3901 through 3912

    0.0028    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027

  Columns 3913 through 3924

    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027

  Columns 3925 through 3936

    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027    0.0027

  Columns 3937 through 3948

    0.0027    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026

  Columns 3949 through 3960

    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026

  Columns 3961 through 3972

    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026    0.0026

  Columns 3973 through 3984

    0.0026    0.0026    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025

  Columns 3985 through 3996

    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025    0.0025

  Columns 3997 through 4001

    0.0025    0.0025    0.0025    0.0025    0.0025

yin = eval(yi_ltx);
plot(x,yn,x,yin)
[Warning: Imaginary parts of complex X and/or Y arguments ignored] 
y_latex = latex(y);
yi_latex = latex(yi);
h = legend(['$',y_latex,'$'],['$',yi_latex,'$']);
[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$\frac{x}{\sqrt{x^2+1}\,\left(x^2+2\right)}$
] 
[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$-\frac{\ln\left(x-\sqrt{2}\,1{}\mathrm{i}\right)\,1{}\mathrm{i}}{2}-\frac{\ln\left(x+\sqrt{2}\,1{}\mathrm{i}\right)\,1{}\mathrm{i}}{2}+\frac{\ln\left(\sqrt{x^2+1}\,1{}\mathrm{i}+1-\sqrt{2}\,x\,1{}\mathrm{i}\right)\,1{}\mathrm{i}}{2}+\frac{\ln\left(\sqrt{x^2+1}\,1{}\mathrm{i}+1+\sqrt{2}\,x\,1{}\mathrm{i}\right)\,1{}\mathrm{i}}{2}$] 
h = legend(['$',y_latex,'$'],['$',yi_latex,'$'])

h = 

[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$\frac{x}{\sqrt{x^2+1}\,\left(x^2+2\right)}$
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay] 
[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$-\frac{\ln\left(x-\sqrt{2}\,1{}\mathrm{i}\right)\,1{}\mathrm{i}}{2}-\frac{\ln\left(x+\sqrt{2}\,1{}\mathrm{i}\right)\,1{}\mathrm{i}}{2}+\frac{\ln\left(\sqrt{x^2+1}\,1{}\mathrm{i}+1-\sqrt{2}\,x\,1{}\mathrm{i}\right)\,1{}\mathrm{i}}{2}+\frac{\ln\left(\sqrt{x^2+1}\,1{}\mathrm{i}+1+\sqrt{2}\,x\,1{}\mathrm{i}\right)\,1{}\mathrm{i}}{2}$] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay] 
  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> ($\frac{x}{\sqrt{x^2+1}\,\left(x^2+2\right)}$, $-\frac{\ln\left(x-\sqrt{2}\,1{}\mathrm{i}\right)\…) with properties:

         String: {1×2 cell}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [-2.9923 0.8187 3.8786 0.0821]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

set(h,'Interpreter','latex')
set(h,'Interpreter','latex','Fontsize',36)
set(h,'Interpreter','latex','Fontsize',24)
set(h,'Interpreter','latex','Fontsize',12)
solve(exp(b*x.^2-x) + a == 100,x)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('sym.getEqnsVars>checkVariables', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@sym/getEqnsVars.m', 92)" style="font-weight:bold">sym.getEqnsVars>checkVariables</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@sym/getEqnsVars.m',92,0)">line 92</a>)
Second argument must be a vector of symbolic variables.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('sym.getEqnsVars', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@sym/getEqnsVars.m', 54)" style="font-weight:bold">sym.getEqnsVars</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@sym/getEqnsVars.m',54,0)">line 54</a>)
    checkVariables(vars);

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve>getEqns', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 429)" style="font-weight:bold">solve>getEqns</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',429,0)">line 429</a>)
[eqns, vars] = sym.getEqnsVars(argv{:});

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 226)" style="font-weight:bold">solve</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',226,0)">line 226</a>)
[eqns,vars,options] = getEqns(varargin{:});
} 
syms x a b
solve(exp(b*x.^2-x) + a == 100,x)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mupadengine/evalin', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@mupadengine/mupadengine.m', 123)" style="font-weight:bold">mupadengine/evalin</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@mupadengine/mupadengine.m',123,0)">line 123</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mupadengine/feval', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@mupadengine/mupadengine.m', 182)" style="font-weight:bold">mupadengine/feval</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/@mupadengine/mupadengine.m',182,0)">line 182</a>)
            [S,err] = evalin(engine,stmt,'message');

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('solve', '/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m', 293)" style="font-weight:bold">solve</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/symbolic/symbolic/solve.m',293,0)">line 293</a>)
sol = eng.feval('solve', eqns, vars, solveOptions);
} 
solve(exp(b*x.^2-x) + a == 100,a)
 
ans =
 
100 - exp(b*x^2 - x)
 
[Warning: Imaginary parts of complex X and/or Y arguments ignored] 
[Warning: Imaginary parts of complex X and/or Y arguments ignored] 
diary off
