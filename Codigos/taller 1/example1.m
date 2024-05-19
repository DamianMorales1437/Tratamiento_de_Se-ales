function [y] = example1 (x)
%Solve difference equation:
%  y(n) = x(n) + 0.5x(n-5)
%Sintax:
%  y = example1(x);
%Inputs:
%  x,  a vector with the input sequence
%Outputs:
%  y,  a vector with the output sequence

N = length(x);        %Size of input signal
y = zeros(N, 1);      %Initialize output at zeros
bufferx = zeros(5, 1);%Create memory bufferx

%Solve difference equation recursively:
for n = 1:N
  y(n) = x(n) + 0.5*bufferx(end);
  bufferx(2:end) = bufferx(1:end-1); %Shift buffer 
  bufferx(1) = x(n);    %Update buffer 
  
end
