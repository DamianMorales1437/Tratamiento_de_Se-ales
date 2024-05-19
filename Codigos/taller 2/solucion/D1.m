function [y] = D1 (x)
%First difference 
%Sintax:
%  y = D1(x);
%Inputs:
%  x,    a vector with the input sequence
%Outputs:
%  y,    a vector with the first difference of the input

%Edit here %%%%%%%%%%%%%%%%%%%
k=0:99;
r=0:200;
h(k==1)=1;
h(k~=1)=0;
dimx=size(x);
N1=dimx(end);
dimh=size(h);
N2=dimh(end);

R=N1+N2-1;%tamaño de la convolucion 
i=N1;%posiciones de x
xc=zeros(1,R);

xc(r<i)=x;
c=xc-conv(x,h);
y=zeros(1,101);
y=c(r<101);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
