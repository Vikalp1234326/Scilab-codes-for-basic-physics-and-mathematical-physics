clc
clear
clf()
//Vikalp Sharma
//4037
x=[ 1, 2, 3, 4, 5]
y=[1.2, 1.7, 3.5, 3.6, 3.9]
w = [1, 10, 1, 1, 1]

plot(x,y,"o")

n=5

a=sum(w.*(x.^2))
b=sum(w.*(x))
c=sum(w.*(x.*y))
d=sum(w.*(y))

o=[a b ; b sum(w)]
p=[c ; d]

e=inv(o)

q=e*p

disp("The value of a is: ")
disp(q(1,1))

disp("The value of b is: ")
disp(q(2,1))

k=[]
for j=1:5
     k(j)=(q(1,1)*x(j)+(q(2,1)))
end
disp(k)
plot(x,k,"--b")
legend("scatter plot","slope: 0.8151351 intercept:0.1624 ")
xgrid(1,1,3)
