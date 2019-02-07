
%Read and display the input image
I = imread('circuitboard-pepper.tif');
figure
imshow(I);
hold on;
n= 5;
m=5;

Input=ones(m,n)/(m*n);

h = imfilter(I,Input);

f_hat_aMean =h;

figure
imshow(f_hat_aMean);
