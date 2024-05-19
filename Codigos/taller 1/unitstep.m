function [x,n] = unitstep (n0, n1, n2)
%Unit step sequence
%Sintax:
%  [x,n] = unitstep(n0, n1, n2);
%Inputs:
%  n0,   location of the step
%  n1,   lower limit of n
%  n2,   upper limit of n
%Outputs:
%  x,    1xN vector with output sequence
%  n,    indici of the discrete sequence



%Edit here %%%%%%%%%%%%%%%%%%%%
n=n1:n2;
N=n2-n1+1;
x=zeros(1,N);
center=n0+n2+1;
for i=1:N
   if i>=center
       x(i)=1;
   end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
