function [ psnr ] = getpnsr( img1,img2 ,Q)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[h w]=size(img1);
dimg1=double(img1);
dimg2=double(img2);
MSE=sum(sum(dimg1-dimg2).^2)/(h*w);
psnr=20*log10(Q/sqrt(MSE));
return
end

