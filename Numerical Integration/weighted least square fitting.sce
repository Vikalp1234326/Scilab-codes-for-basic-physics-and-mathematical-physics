clc
clear
clf()
//Vikalp Sharma
//4037

x=[0, 2, 5, 7]
y = [-1, 5, 12, 20]
w = [1, 1, 1, 1]

t = plot(x,y,"or")
t.thickness = 2
n=4

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
for j=1:4
     k(j)=(q(1,1)*x(j)+(q(2,1)))
end
disp(k)
r = plot(x,k,"--b")
r.thickness = 1.5;
title("Weighted Least Square fitting with weight : w = [1, 1, 1, 1], w = [1,1,10,1], w = [1,1,100,1]")

xgrid(1,1,3)

//////////////////////////////////////////////////////////////////////

x=[0, 2, 5, 7]
y = [-1, 5, 12, 20]
w1 = [1,1,10,1]

a=sum(w1.*(x.^2))
b=sum(w1.*(x))
c=sum(w1.*(x.*y))
d=sum(w1.*(y))

o=[a b ; b sum(w)]
p=[c ; d]

e=inv(o)

q=e*p

disp("The value of a is: ")
disp(q(1,1))

disp("The value of b is: ")
disp(q(2,1))

k=[]
for j=1:4
     k(j)=(q(1,1)*x(j)+(q(2,1)))
end
disp(k)
r = plot(x,k,"--g")

////////////////////////////////////////////////

x=[0, 2, 5, 7]
y = [-1, 5, 12, 20]
w2 = [1,1,100,1]

a=sum(w2.*(x.^2))
b=sum(w2.*(x))
c=sum(w2.*(x.*y))
d=sum(w2.*(y))

o=[a b ; b sum(w)]
p=[c ; d]

e=inv(o)

q=e*p

disp("The value of a is: ")
disp(q(1,1))

disp("The value of b is: ")
disp(q(2,1))

k=[]
for j=1:4
     k(j)=(q(1,1)*x(j)+(q(2,1)))
end
disp(k)
r = plot(x,k,"--r")

legend("scatter plot","w = [1, 1, 1, 1]","w = [1,1,10,1]","w1 = [1,1,100,1]")
