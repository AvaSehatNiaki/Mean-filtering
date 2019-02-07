

I = imread('circuitboard-saltandpep.tif');
H = minFilter(I,5,5)
H1 = medianFilter(I,5,5)
H2 = maxFilter(I,5,5)

function [f_hat] = minFilter(g,n,m)

g = im2double(g);

fun = @(x) min(x(:));

minFi = nlfilter(g,[n m],fun); 

imshowpair(g,minFi, 'montage');

title('Original Image (Left) and Min Filtered Image (Right)')
end


function [f_hat] = medianFilter(g,n,m)

g = im2double(g);

fun = @(x) Median(x(:));

medianFi = nlfilter(g,[n m],fun); 

figure
imshowpair(g,medianFi, 'montage');

title('Original Image (Left) and Min Filtered Image (Right)')
end

function [f_hat] = maxFilter(g,n,m)

g = im2double(g);

fun = @(x) Max(x(:));

figure
maxFi = nlfilter(g,[n m],fun); 

imshowpair(g,maxFi, 'montage');

title('Original Image (Left) and Max Filtered Image (Right)')
end
