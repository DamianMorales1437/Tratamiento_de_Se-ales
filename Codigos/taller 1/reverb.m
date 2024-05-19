function [y] = reverb (x, alpha, M)
%Solve difference equation:
%  y(n) = x(n) + alpha*y(n-M)
%Sintax:
%  y = reverb(x, alpha, M);
%Inputs:
%  x,       a vector with the input sequence
%  alpha,   a float with the constant alpha
%  M,       an integer with a delay
%Outputs:
%  y,       a vector with the output sequence

%Edit here %%%%%%%%%%%%%%%%%%%%%%%%%%%%
N = length(x);        %Size of input signal
y = zeros(N, 1);      %Initialize output at zeros
buffery = zeros(M, 1);%Create memory bufferx

for n = 1:N
  y(n) = x(n) + alpha*buffery(end);
  buffery(2:end) = buffery(1:end-1); %Shift buffer 
  buffery(1) = x(n);    %Update buffer 
  
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
