clear
clc()
clf()
x=[ 2, 4, 7, 10, 20, 40, 60, 80]
y=[43, 25, 18, 13, 8, 5, 3, 2]
u = plot(x,y,"ob")
u.thickness = 2
n = 8


c = [n sum(log(x));sum(log(x)) sum(log(x).^2)]

d=[sum(log(y)) ; sum(log(y).*log(x))]

h = inv(c)*d
disp(c)
disp(d)
disp("The value of a is : ")
disp(exp(h(1,1)))

disp("The value of b is : ")
disp(h(2,1))
disp(h)
z = [0:100]
q = exp(h(1,1)).*x.^h(2,1)
l = exp(h(1,1)).*z.^h(2,1)

h = plot(x,q,"--r")
h.thickness = 2

g = plot(z,l,"--g" )
g.thickness = 2
xgrid(1,1,3)
legend("scatter plot ", "Least square fitted with x points", "Least square fitting for new points")


