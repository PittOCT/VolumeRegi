
figure
for iframe=1:512
    clf;
    bb =double(RegisterSplit(:,:,iframe))./65535*30;
    bb= 20*log10(bb);
    imshow(bb,[5 20])
end

Imin=5;Imax=20;
imgMat = double(RegisterSplit)./65535*30;
imgMat = (20*log10(imgMat)-Imin)./(Imax-Imin);
imgMat = uint16(imgMat.*65535);
imgMatAg = imgMat;