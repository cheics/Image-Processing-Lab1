function [psnr_out] =  PSNR(ref_img,test_img)

m = size(ref_img,1);
n = size(ref_img,2);


MSE = (1/(m*n))*(sum(sum(((ref_img-test_img).^2),1),2));

maxPixelVal=255;

psnr_out =  10*log10((maxPixelVal^2)/MSE);

end