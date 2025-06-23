
clc()
clf()
x=[ 2, 4, 6, 8, 10]
y=[4.07, 11.08, 30.13, 81.9, 222.6]
u = plot(x,y,"or")
u.thickness = 3
n = 5

a = [n sum(x); sum(x) sum(x.^2)]
b = [sum(log(y)); sum(log(y).*x)]

c = inv(a)*b
disp(c)

disp("The value of a  = ", exp(c(1,1)))
disp("The value of b  = ", c(2,1))
x1 = [1:0.1:10]
s = exp(c(1,1))*exp(c(2,1)*x1)

plot(x1,s,"--")
xgrid(1,1,3)
legend("scatter plot", "Exponential fit")
