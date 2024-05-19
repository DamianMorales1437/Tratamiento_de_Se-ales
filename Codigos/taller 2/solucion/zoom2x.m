function C = zoom2x(A)
% Zoom on grayscale input image A
% Sintax:
%     C = zoom2x(A)
% Inputs:
%     A is a MxN matrix with the input image
%     C is a (2M-1)x(2N-1) matrix with the zoomed
%     output
    

%Edit your code here %%%%%%%%%%%%
[m,n]=size(A);
B = zeros(2*m-1,2*n-1);
B(1:2:end,1:2:end) = A;
H=[0.25 0.5 0.25; 0.5 1 0.5; 0.25 0.5 0.25];
C = conv2(B,H,"same");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%