clc
clf()
clear
x=[-5*%pi: 0.1:5*%pi]
y=sin(x)
plot(x,y,'-r')

z=cos(x)
plot(x,z,'y')

b=tan(x)
plot(x,b)
xgrid(1,1)

xtitle('Sin and Cos Plot','Time Period', 'Range')

//axes properties