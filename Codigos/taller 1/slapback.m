function [y] = slapback (x, alpha, M)
%Solve difference equation:
%  y(n) = x(n) + alpha*x(n-M)
%Sintax:
%  y = slapback(x, alpha, M);
%Inputs:
%  x,       a vector with the input sequence
%  alpha,   a float with the constant alpha
%  M,       an integer with a delay
%Outputs:
%  y,       a vector with the output sequence

%Edit here %%%%%%%%%%%%%%%%%%%%%%
N = length(x);        %Size of input signal
y = zeros(N, 1);      %Initialize output at zeros
bufferx = zeros(M, 1);%Create memory bufferx

for n = 1:N
  y(n) = x(n) + alpha*bufferx(end);
  bufferx(2:end) = bufferx(1:end-1); %Shift buffer 
  bufferx(1) = x(n);    %Update buffer 
  
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
