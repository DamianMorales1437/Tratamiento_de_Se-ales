function X = pgram(x, L, S)
% Periodogram
% Sintaxfunction X = stft(x, L)
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
C=floor(N/(L-S+1));
v= hanning(L);
X=zeros(L,C);
x=x';

for i=1:C
    X1=((i-1)*(L-S))+1;
    X2= X1 + L-1;
    X3= x(X1:X2).*v;
    X(:,i) = fft(X3);
end

X=20*log10(abs(X));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end 
