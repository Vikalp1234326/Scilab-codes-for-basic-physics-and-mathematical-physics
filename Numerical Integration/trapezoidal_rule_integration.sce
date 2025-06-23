clc
clear
clf
x=[0:0.0001:3]
y=x.*exp(-2.*x)
z=0
for i=1:3000
    z=z+(y(i)+y(i+1))/2*0.0001
end
disp(z)
plot(x,y,"ob")

function [y]=f(t)
    y= t.*exp(-2.*t)
endfunction

function [y]=s(t,i)
    j=j+1
    y=(t(i)+t(j))/(2*0.01)
endfunction

q=[0:0.01:3]
a=f(q)
r=0
for k=1:300
    r=r+q(k)
end
xgrid(1,1)
plot(q,y,"g")
