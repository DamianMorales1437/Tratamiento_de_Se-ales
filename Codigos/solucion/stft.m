function X = stft(x, L)
%Short time Fourier transform (STFT)
%Sintax:
%  X = stft(x, L);
%Inputs:
%x,    vector with input sequence
%L,    length of analysis window
%Output:
%X,    STFT of input sequence.

%Edit here %%%%%%%%%%%%%%%%%%%%%%%
N=length(x);
%truncando 
C=floor(N/L);

v = hanning(L);

X=zeros(L,P)

for i=1:C
    X1=x(((i-1)*L)+1:i*L).*v
    X(:,i) = dft(X1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end 
