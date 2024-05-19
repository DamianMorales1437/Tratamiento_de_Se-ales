function [y] = pmovil (x, M)
%Moving average
%Sintax:
%  y = pmovil(x, M)
%Inputs:
%  x,    vector with input sequence
%  M,    length of moving average filter
%Outputs:
%  y,    processed sequence

%Edit here %%%%%%%%%%%%%%%%%%%%
k=2*M+1;

x1=zeros(k,1);
n1=length(x);
n2=length(x1);
N=n1+n2-1;

for i=1:k
    x1(i)=(1/k);
end
y=zeros(N,1);
y=conv(x,x1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
