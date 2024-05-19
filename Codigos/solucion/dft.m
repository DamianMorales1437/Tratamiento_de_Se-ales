function X = dft(x)
%DFT of input sequence
%Sintax:
%  X = dft(x);
%Inputs:
%x,    Nx1 vector with input sequence
%
%Outputs:
%X,    Nx1 complex output sequence with DFT of input


%Edit here %%%%%%%%%%%%%%%%%%%%%%%%%%%%
N=length(x);


x=x';
X=zeros(N,1);

for i=1:N
    
    wN(i)=(exp(-1*j*2*pi*(i-1)/N));
end

for k=1:N
%producto punto
X(k)=dot(x,wN.^(k-1));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
