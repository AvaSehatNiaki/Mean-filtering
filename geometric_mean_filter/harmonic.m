
h=Harmonic_mean_filter(Im,5);
figure 
imshow(h);

function [Im]=Harmonic_mean_filter(Im,Mask)

Im = imread('circuitboard-salt.tif');
Im=double(Im);

S_=size(Im);

Mask=5;
for i=1:S_(1)
    j=1;
    
        T(1:Mask)=Im(i,j:j+(Mask-1));
        Data=harmmean(T);
        Im(i,j+1)=Data;
        j=j+1;
    
end
end



