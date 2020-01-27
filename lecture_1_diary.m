a = 1

a =

     1

b = 2

b =

     2

c = a + b

c =

     3

d = pi/3

d =

    1.0472

g = sin(d)

g =

    0.8660

cos(d)

ans =

    0.5000

tan(d)

ans =

    1.7321

pi

ans =

    3.1416

format long
pi

ans =

   3.141592653589793

format short
pi

ans =

    3.1416

format rat
pi

ans =

     355/113   

pi^2

ans =

   10975/1112  

format short
pi^2

ans =

    9.8696

1e3

ans =

        1000

e3
{Undefined function or variable 'e3'.
} 
2e-3

ans =

    0.0020

e
{Undefined function or variable 'e'.
} 
exp(1)

ans =

    2.7183

a = 1/0

a =

   Inf

b = inf + 10

b =

   Inf

c = -1/0

c =

  -Inf

d = 0/0

d =

   NaN

nan-nan

ans =

   NaN

inf-inf

ans =

   NaN

A = [1 2; 3 4]

A =

     1     2
     3     4

B = [1 2 3; 4 5 6; 7 8 9]

B =

     1     2     3
     4     5     6
     7     8     9

B = [1 2 3
        4 5 6
        7 8 9]

B =

     1     2     3
     4     5     6
     7     8     9

B = [1 2 3
4 5 6
7 8 9]

B =

     1     2     3
     4     5     6
     7     8     9

C = [1 2 3 4 5]

C =

     1     2     3     4     5

D = [1; 2; 3; 4; 5]

D =

     1
     2
     3
     4
     5

A = [1 2; 3 4];
A

A =

     1     2
     3     4

A = [1 2 3 4]

A =

     1     2     3     4

A

A =

     1     2     3     4

7 8 9]
 7 8 9]
   ↑
{Error: Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or other syntax error. To
construct matrices, use brackets instead of parentheses.
} 
A = [1 2; 3 4];
A

A =

     1     2
     3     4

a= [pi pi/2 pi/3 pi/4];
cos(a)

ans =

   -1.0000    0.0000    0.5000    0.7071

t = 0:0.2:1

t =

         0    0.2000    0.4000    0.6000    0.8000    1.0000

t = linspace(0,1,100);
A = ones(3,4)

A =

     1     1     1     1
     1     1     1     1
     1     1     1     1

B = zeros(4,5)

B =

     0     0     0     0     0
     0     0     0     0     0
     0     0     0     0     0
     0     0     0     0     0

C = twos(2,3)
{Undefined function or variable 'twos'.
} 
C = whos(2,3)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('whos')" style="font-weight:bold">whos</a>
Must be a string scalar or character vector.
} 
C = ones(2,3) + ones(2,3)

C =

     2     2     2
     2     2     2

C = 2*ones(2,3)

C =

     2     2     2
     2     2     2

t

t =

  Columns 1 through 12

         0    0.0101    0.0202    0.0303    0.0404    0.0505    0.0606    0.0707    0.0808    0.0909    0.1010    0.1111

  Columns 13 through 24

    0.1212    0.1313    0.1414    0.1515    0.1616    0.1717    0.1818    0.1919    0.2020    0.2121    0.2222    0.2323

  Columns 25 through 36

    0.2424    0.2525    0.2626    0.2727    0.2828    0.2929    0.3030    0.3131    0.3232    0.3333    0.3434    0.3535

  Columns 37 through 48

    0.3636    0.3737    0.3838    0.3939    0.4040    0.4141    0.4242    0.4343    0.4444    0.4545    0.4646    0.4747

  Columns 49 through 60

    0.4848    0.4949    0.5051    0.5152    0.5253    0.5354    0.5455    0.5556    0.5657    0.5758    0.5859    0.5960

  Columns 61 through 72

    0.6061    0.6162    0.6263    0.6364    0.6465    0.6566    0.6667    0.6768    0.6869    0.6970    0.7071    0.7172

  Columns 73 through 84

    0.7273    0.7374    0.7475    0.7576    0.7677    0.7778    0.7879    0.7980    0.8081    0.8182    0.8283    0.8384

  Columns 85 through 96

    0.8485    0.8586    0.8687    0.8788    0.8889    0.8990    0.9091    0.9192    0.9293    0.9394    0.9495    0.9596

  Columns 97 through 100

    0.9697    0.9798    0.9899    1.0000

C = zeros(2,3)+2

C =

     2     2     2
     2     2     2

ones(2,3)+1

ans =

     2     2     2
     2     2     2

rand

ans =

    0.8147

rand

ans =

    0.9058

rand

ans =

    0.1270

rand

ans =

    0.9134

rand

ans =

    0.6324

rand(2,3)

ans =

    0.0975    0.5469    0.9649
    0.2785    0.9575    0.1576

A1 = [1 2; 3 4];
B = [1 2;3 4];
C = A1 + B

C =

     2     4
     6     8

A1-5

ans =

    -4    -3
    -2    -1

A1*B

ans =

     7    10
    15    22

A1/B

ans =

     1     0
     0     1

A1/C

ans =

    0.5000         0
         0    0.5000

C1 = A1.*B

C1 =

     1     4
     9    16

I = 0.5;
R = 100;
P = I^2*R

P =

    25

I = [0.5 0.25 0.1];
R = 100;
P = I^2*R
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mpower')" style="font-weight:bold"> ^ </a>
Incorrect dimensions for raising a matrix to a power. Check that the matrix is square and the power is a scalar. To perform
elementwise matrix powers, use '.^'.
} 
P = I*I*R
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mtimes')" style="font-weight:bold"> * </a>
Incorrect dimensions for matrix multiplication. Check that the number of columns in the first matrix matches the number of rows
in the second matrix. To perform elementwise multiplication, use '.*'.
} 
P = I.^2*R

P =

   25.0000    6.2500    1.0000

t1 = [0 1 2];
t2 = [3 4 5];
t = [t1, t2]

t =

     0     1     2     3     4     5

t = [t1 t2]

t =

     0     1     2     3     4     5

t = [t1; t2]

t =

     0     1     2
     3     4     5

t = [t1]

t =

     0     1     2

t = [t1
        t2]

t =

     0     1     2
     3     4     5

A(1)

ans =

     1

A = [2 3 4 5; 6 7 8 9]

A =

     2     3     4     5
     6     7     8     9

A(1)

ans =

     2

A(2)

ans =

     6

A(3)

ans =

     3

A(1,)
 A(1,)
     ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for mismatched
delimiters.
} 
A(1, )
 A(1, )
      ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for mismatched
delimiters.
} 
A(1,:)

ans =

     2     3     4     5

A(:,2)

ans =

     3
     7

A(:,3)

ans =

     4
     8

A(0)
{Array indices must be positive integers or logical values.
} 
A(8)

ans =

     9

A(9)
{Index exceeds array bounds.
} 
diary off
