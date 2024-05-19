function [y] = D2 (x)
%Second difference 
%Sintax:
%  y = D2(x);
%Inputs:
%  x,    a vector with the input sequence
%Outputs:
%  y,    a vector with the second difference of the input

%Edit here %%%%%%%%%%%%%%%%%%%

k=0:99;
r=0:200;
h(k==1)=1;%impulso en 1
h(k~=1)=0;

g(k==2)=1;%impulso en 2
g(k~=2)=0;


dimx=size(x);
N1=dimx(end);
dimh=size(h);
N2=dimh(end);
R=N1+N2-1;%tamaño de la convolucion 
i=N1-1;%posiciones de x
xc=zeros(1,R);
%Edit here% %%%%%%%%%%%%%%%%%%
xc(r<=i)=x;
c=xc-(2*conv(x,h))+(conv(x,g));
y=zeros(1,102);
y=c(r<102);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end