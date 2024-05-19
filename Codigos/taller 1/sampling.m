function [x,n] = sampling (fs, N)
%Sample signal x(t) = exp(-0.5t)sin(2(pi)t)
%Sintax:
%  [x, n] = sampling(fs, N);
%Inputs:
%  fs,   sampling frecuency (Hz)
%  N,    (integer) with the number of samples
%Outputs:
%  x,    1xN vector with the sampled sequence
%  n,    the indici of the sampled sequence.

n = 0:N-1;  %Indici of the sampled sequence
T = 1/fs;   %Sampling period (seconds)

%Edit here %%%%%%%%%%%%%
x = exp(-0.5*n*T).*sin(2*pi*n*T);
%%%%%%%%%%%%%%%%%%%%%%%%

end
