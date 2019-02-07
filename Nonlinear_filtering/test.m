%Read and display the input image
A = imread('circuitboard-saltandpep.tif');
A = im2double(A);

fun = @(x) min(x(:));

B = nlfilter(A,[5 5],fun); 

montage({A,B})
title('Original Image (Left) and Median Filtered Image (Right)')

