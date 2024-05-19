function [X] = dftk(x, k)
%Compute k-th term of DFT
%Sintax:
%  X = dftk(x, k)
%Inputs:
% x,    Nx1 vector with input sequence
% k,    scalar with index of desired DFT term
% Outputs:
% X,    complex coefficient X(k) 

%Edit here %%%%%%%%%%%%%%%%%%%%%%%%

N=length(x);
x=x';

X=zeros(k,1);
for i=1:N
    wN(i)=(exp(-1*j*2*k*pi*(i-1)/N));
end
% producto punto
X=dot(x,wN);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end 
