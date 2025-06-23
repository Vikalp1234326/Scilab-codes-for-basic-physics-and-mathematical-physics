clc 
clear

a=0
s=1
x=input("Enter the value of angle in Radian : ")
for i= 1:2:1000
    s=s+1
    a=a+((-1)^s)*(x^i/(factorial(i)))
end
disp("Value of sin expansion: ")
disp(a)
disp(sin(x))
b=1
p=0
for i=2:2:10000
    p=p+1
   b=b+((-1)^p)*((x^(i))/factorial(i)) 
end
disp("value of cos expansion")
disp(b)
disp(cos(x))

x=input(" Value exponential expansion : ")
w=1
for j=1:100
    w = w+(((x)^j))/factorial(j)
end
disp(w)
disp(exp(x))
