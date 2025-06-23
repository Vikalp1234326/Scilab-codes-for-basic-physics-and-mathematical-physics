
a=0
s=1
x=input("Enter the value of angle in degree : ")
for i=1:2:1000
    s=s+1
    a=a+((-1)^s)*((x)^i/(factorial(i)))
end

disp(a)
disp(sin(x))
