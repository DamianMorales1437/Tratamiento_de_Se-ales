function [X, omega] = dftm(x, M)
%DFT of M points
%Sintax:
%  X = dft(x, M);
%Inputs:
% x,   Nx1 vector with input sequence
% M,   scalar with number of points
%
%Outputs:
%X,    Mx1 complex output sequence with DFT of input


%Edit here %%%%%%%%%%%%%%%%%%%%%%%%%%%%
N=length(x)




x1=[x zeros(1,M-N)]

X=dft(x1);
for r=1:M

omega(r)=2*pi*(r-1)/M;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
