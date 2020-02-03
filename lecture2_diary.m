R[1 1 1; 0 0 0; 0 0 0];
 R[1 1 1; 0 0 0; 0 0 0];
  ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
} 
R = [1 1 1; 0 0 0; 0 0 0];
G = [0 0 0; 1 1 1; 0 0 0];
B = [0 0 0; 0 0 0; 1 1 1];
% Element indexing
A(1,1)

ans =

     1

A(1,:)

ans =

     1     2

A(:,2)

ans =

     2
     5

A(:,:)

ans =

     1     2
     4     5

my_image(:,:,1) = R;
my_image(:,:,2) = G;
my_image(:,:,3) = B;
size(my_image)

ans =

     3     3     3

image(my_image)
my_image(:,:,1) = R+G+B;
image(my_image)
% Let'š create 4 dimentional matrix
my_movie(:,:,:,1) = my_image;
image(my_movie)
my_image(:,:,1) = R;
image(my_movie)
image(my_image)
my_movie(:,:,:,1) = my_image;
image(my_movie)
my_image(2,2,3) = 1;
image(my_image)
my_movie(:,:,:,2) = my_image;
my_image(2:3,3,1) = 1;
image(my_image)
my_movie(:,:,:,3) = my_image;
my_image(3,:,2) = 1;
image(my_image)
my_movie(:,:,:,4) = my_image;
my_image(1,[1 3],3) = 1;
image(my_image)
my_movie(:,:,:,5) = my_image;
my_image(:,:,1) = 1;
image(my_image)
my_movie(:,:,:,6) = my_image;
my_image(:,:,:) = 0;
image(my_image)
my_movie(:,:,:,7) = my_image;
my_image(1,:,1) = [1 0.7 0.5];
image(my_image)
my_movie(:,:,:,8) = my_image;
my_image(2,[1 3],2) = [1 0.5];
image(my_image)
my_movie(:,:,:,9) = my_image;
my_image(:,2,3) = [1 0.5 0.7];
my_movie(:,:,:,10) = my_image;
my_image(2:3,2:3,1) = [0.5 0.9; 0.7 0.8];
my_movie(:,:,:,11) = my_image;
image(my_image)
my_image

my_image(:,:,1) =

    1.0000    0.7000    0.5000
         0    0.5000    0.9000
         0    0.7000    0.8000


my_image(:,:,2) =

         0         0         0
    1.0000         0    0.5000
         0         0         0


my_image(:,:,3) =

         0    1.0000         0
         0    0.5000         0
         0    0.7000         0

my_image(:) = [(1:27)/27]';
my_image(:) = [(27:-1:1)/27]';
my_movie(:,:,:,12) = my_image;
rand

ans =

    0.8147

rand

ans =

    0.9058

my_image(:,:,:) = rand(3, 3, 3);
image(my_image)
my_movie(:,:,:,13) = my_image;
my_image(:,:,:) = rand(3, 3, 2);
{Unable to perform assignment because the size of the left side is 3-by-3-by-3 and the size of the right side
is 3-by-3-by-2.
} 
% how to get number of elements
size(my_image)

ans =

     3     3     3

size(my_movie)

ans =

     3     3     3    13

size(my_movie,4)

ans =

    13

for i = 1:size(my_movie, 4)
image(my_movie(:,:,:,i));
pause(1)
shg
end
diary off
