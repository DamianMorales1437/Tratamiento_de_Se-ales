function [x,n] = unitpulse (n0, n1, n2)
%Unit pulse sequence
%Sintax:
%  [x,n] = unitpulse (n0, n1, n2);
%Inputs:
%  n0,   location of the pulse
%  n1,   lower limit of n
%  n2,   upper limit of n
%Outputs:
%  x,    1xN vector with output sequence
%  n,    indici of the discrete sequence



%Edit code here %%%%%%%%%%
n=n1:n2;
N=n2-n1+1;
x=zeros(1,N);
x(n0+n2+1)=1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
