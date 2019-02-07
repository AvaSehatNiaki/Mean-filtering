
%Read and display the input image
I = imread('circuitboard-salt.tif');
figure
imshow(I);
hold on;
n= 5;
m=5;


I=power(exp(imfilter(log(im2double(I)),ones(m,n),'replicate')),(1/m/n));
f_hat_gMean=I;


figure
imshow(f_hat_gMean);
