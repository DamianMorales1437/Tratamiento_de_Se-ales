function [y] = accum (x)
%Accumulator system
%Sintax:
%  y = accum(x);
%Inputs:
%  x,    input sequence
%Outputs:
%  y,    output sequence

% Edit here %%%%%%%%%%%%%%%%%%
A=[1 -1];
B = 1;

y = filter(B, A, x)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
