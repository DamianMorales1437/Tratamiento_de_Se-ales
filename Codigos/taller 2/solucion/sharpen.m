function G = sharpen(F, c)
%Image sharpening with Laplacian filter
% Sintax:
%     G = sharpen(G, c)
% Inputs:
%     F   MxN input grayscale image
%     c   a scalar in with the sharpening parameter
% Outputs:
%     G   MxN output image
    
    
%  Edit here %%%%%%%%%%%%%%%%%%%%%%%%
h=[0 1 0;1 -4 1;0 1 0];
C=conv2(F,h,'same');


G=F-(c*C);


 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%