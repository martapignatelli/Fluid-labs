function [x0_px, y0_px] = Find_pixel(img)
% Function to extract the pixel positioning of a selected point in a given
% image
% Load image
ref_img = imread('ref_image.png');
figure;
pause(0.5)
title('Click on the rear point of the cylinder');
imshow(ref_img);

% Click on front and rear edges of the cylinder (2 points)
drawnow;
[x0_px, y0_px] = ginput(1);